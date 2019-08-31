package com.example.example;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    EditText edtTen,edtChieucao,edtCannang,edtBMI,edtChuandoan;
    Button btnTinhBMI;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        edtTen = findViewById(R.id.edtTen);
        edtCannang = findViewById(R.id.edtCannang);
        edtChieucao = findViewById(R.id.edtChieucao);
        edtBMI = findViewById(R.id.edtBMI);
        edtChuandoan = findViewById(R.id.edtChuandoan);
        btnTinhBMI = findViewById(R.id.btnTinhBMI);

        btnTinhBMI.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                double cao = Double.parseDouble(edtChieucao.getText().toString());
                double nang = Double.parseDouble(edtCannang.getText().toString());
                double BMI = (nang)/(1/(cao*cao));
                edtBMI.setText(String.valueOf(BMI));
                if(BMI > 18 )
                    edtChuandoan.setText("Gầy");
                else if(BMI > 18 && BMI < 24.9)
                    edtChuandoan.setText("Bình Thường");
                else if(BMI > 25 && BMI < 29.9)
                    edtChuandoan.setText("Béo Phì Độ I");
                else if(BMI > 30 && BMI < 34.9)
                    edtChuandoan.setText("Béo Phì Độ II");
                else
                    edtChuandoan.setText("Béo PHì Độ III");
            }
        });
    }
}
