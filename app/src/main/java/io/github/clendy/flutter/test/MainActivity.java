package io.github.clendy.flutter.test;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.FrameLayout;

import io.flutter.facade.Flutter;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        View button = findViewById(R.id.button);
        button.setOnClickListener(v -> {
            View flutterView = Flutter.createView(
                    MainActivity.this,
                    getLifecycle(),
                    "route1"
            );

            FrameLayout decorView = (FrameLayout) getWindow().getDecorView();
            FrameLayout.LayoutParams layout = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT);
//            addContentView(flutterView, layout);
            decorView.addView(flutterView, layout);
        });
    }
}
