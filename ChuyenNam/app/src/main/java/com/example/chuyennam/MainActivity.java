package com.example.chuyennam;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    TextView txtNamam;
    EditText edtNamduong;
    Button btnChuyendoi;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txtNamam=findViewById(R.id.txtNamam);
        edtNamduong=findViewById(R.id.edtNamduong);
        btnChuyendoi=findViewById(R.id.btnChuyen);
        btnChuyendoi.setOnClickListener(new View.OnClickListener() {
            @Override

            public void onClick(View view) {
                int namDuong = Integer.parseInt(edtNamduong.getText().toString());
                String can = null;
                String chi = null;
                switch (namDuong%10)
                {
                    case 0:
                        can = "Canh";
                        break;
                    case 1:
                        can = "Tân";
                        break;
                    case 2:
                        can = "Nhâm";
                        break;
                    case 3:
                        can = "Quý";
                        break;
                    case 4:
                        can = "Giáp";
                        break;
                    case 5:
                        can = "Ất";
                        break;
                    case 6:
                        can = "Bính";
                        break;
                    case 7:
                        can = "Đinh";
                        break;
                    case 8:
                        can = "Mậu";
                        break;
                    case 9:
                        can = "Kỷ";
                        break;
                }

                //Chi
                switch (namDuong%12)
                {
                    case 0:
                        chi = "Thân";
                        break;
                    case 1:
                        chi = "Dậu";
                        break;
                    case 2:
                        chi = "Tuất";
                        break;
                    case 3:
                        chi = "Hợi";
                        break;
                    case 4:
                        chi = "Tí";
                        break;
                    case 5:
                        chi = "Sửa";
                        break;
                    case 6:
                        chi = "Dần";
                        break;
                    case 7:
                        chi = "Mão";
                        break;
                    case 8:
                        chi = "Thìn";
                        break;
                    case 9:
                        chi = "Tỵ";
                        break;
                    case 10:
                        chi = "Ngọ";
                        break;
                    case 11:
                        chi = "Mùi";
                        break;

                }
                String namam = can+" "+chi;
                txtNamam.setText(namam);
            }


    });
    }


}
