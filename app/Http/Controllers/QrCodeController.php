<?php

namespace App\Http\Controllers;

use App\Http\Resources\QrCodeResource;
use App\Models\QrCode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class QrCodeController extends Controller
{
    
    public function generateRandomText($length = 9) {
        $date = date('Ymdhis');
        $characters = $date . '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $shuffled = str_shuffle($characters);
        return substr($shuffled, 0, $length);
    }

    public function assignUser(Request $request){
        $data = QrCode::find($request->qrcode_id);
        $data->user_id = $request->user_id;
        $data->status = 'Used';
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'status' => 1, 
            'message' => 'User QR Code assigned successfully.'
        ]);
    }

    public function indexByStatus(Request $request){
        $data = QrCode::with(['user'])->where('status', $request->status)
                ->orderBy('updated_at', 'desc')->paginate(12);
        return QrCodeResource::collection($data);
    }
    
    public function index(){
        $data = QrCode::with(['user'])->orderBy('updated_at', 'desc')->paginate(12);
        return QrCodeResource::collection($data);
    }

    public function search(Request $request){
        $data = QrCode::with(['user'])
                ->where('code', 'LIKE', '%' . $request->search . '%')
                ->orderBy('updated_at', 'desc')
                ->paginate(12);
        return QrCodeResource::collection($data);
    }

    public function storeByNum(Request $request) {
        $user_id = Auth::user()->id;
        for($i = 0; $i < (int)$request->quantity; $i++) {
            $data = new QrCode();
            $data->code = date('Yhs') . rand(0, 10000) . $this->generateRandomText(8);
            $data->status = 'Available';
            $data->created_at = now();
            $data->updated_at = now();
            $data->save();
        }
        return response()->json([
            'status' => 1,
            'message' => 'Data saved successfully.'
        ]);
    }

    public function store(Request $request) {
        $user_id = Auth::user()->id;
        $data = new QrCode();
        $data->code = date('Yhs') . rand(0, 10000) . $this->generateRandomText(8);
        $data->user_id = $user_id;
        $data->status = 'Available';
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'status' => 1,
            'message' => 'Data saved successfully.',
            'data' => new QrCodeResource($data),
        ]);
    }

    public function view($id){
        $data = QrCode::with(['user'])->find($id);
        return new QrCodeResource($data);
    }

    public function delete($id) {
        $data = QrCode::with(['user'])->find($id);
        $data->delete();
        return response()->json([
            'status' => 1,
            'message' => 'Data deleted successfully.',
            'data' => new QrCodeResource($data),
        ]);

    }


}
