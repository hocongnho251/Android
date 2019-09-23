package com.example.dangkythongtincanhan;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button btnGui ;
    CheckBox cbkDocSach,cbkDocBao,cbkDocCoding;
    EditText edtHoten,edtBoSung,edtCMND;
    RadioGroup group;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnGui = (Button) findViewById(R.id.btnGui);
        cbkDocSach = (CheckBox) findViewById(R.id.cbkDocSach);
        cbkDocBao = (CheckBox) findViewById(R.id.cbkDocBao);
        cbkDocCoding = (CheckBox) findViewById(R.id.cbkDocCoding);
        edtBoSung = (EditText) findViewById(R.id.edtBoSung);
        edtCMND = (EditText) findViewById(R.id.edtCMND);
        edtHoten = (EditText) findViewById(R.id.edtTen);
        btnGui.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                    doShow();
            }
        });
    }

    public void doShow()
    {
        String ten = edtHoten.getText().toString();
        ten = ten.trim();
        String cmnd = edtCMND.getText().toString();
        cmnd = cmnd.trim();
        //check Họ Tên
        if(ten.length() < 3 )
        {
            edtHoten.requestFocus();
            edtHoten.selectAll();
            Toast.makeText(this,"Tên phải >= 3 kí tự",Toast.LENGTH_LONG).show();
            return;
        }
        //check CMND
        if(cmnd.length() != 9 )
        {
            edtCMND.requestFocus();
            edtCMND.selectAll();
            Toast.makeText(this,"CMND phải có 9 kí tự !",Toast.LENGTH_LONG).show();
            return;
        }
        //Check Bằng Cấp
        String bangcap = "";
        group = (RadioGroup) findViewById(R.id.rbgroup1);
        int id = group.getCheckedRadioButtonId();
        if(id == -1)
        {
            Toast.makeText(this,"Phải chọn bằng cấp !",Toast.LENGTH_LONG).show();
            return;
        }
        RadioButton rad = (RadioButton) findViewById(id);
         bangcap = rad.getText().toString();
         //Check sở thích

        String sothich = "";
        if(cbkDocBao.isChecked())
        {
            sothich+=cbkDocBao.getText()+"\n";
        }
        if(cbkDocSach.isChecked())
        {
            sothich+=cbkDocSach.getText()+"\n";
        }
        if(cbkDocCoding.isChecked())
        {
            sothich+=cbkDocCoding.getText()+"\n";
        }
        String bosung = edtBoSung.getText().toString();

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Thông Tin Cá Nhân");
        builder.setPositiveButton("Đóng", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });

        String msg=ten+"\n";
        msg+= cmnd+"\n";
        msg+=bangcap+"\n";
        msg+=sothich;
        msg+="—————————–\n";
        msg+="Thông tin bổ sung:\n";
        msg+=bosung+ "\n";
        msg+="—————————–";
        builder.setMessage(msg);//thiết lập nội dung
        builder.create().show();//hiển thị Dialog
    }
    @Override
    public void onBackPressed() {
        AlertDialog.Builder b =new
                AlertDialog.Builder(MainActivity.this);
        b.setTitle("Question");
        b.setMessage("Are you sure you want to exit?");
        b.setPositiveButton("Yes", new DialogInterface.
                OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                finish();
            }});
        b.setNegativeButton("No", new
                DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which)

                    {
                        dialog.cancel();
                    }
                });
        b.create().show();
    }

}
