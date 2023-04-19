//
//  ContentView.swift
//  MyMusic
//
//  Created by 持田晴生 on 2023/04/05.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのSoundsPlayerクラスのインスタンス生成
    let soundPlayer = SoundsPlayer()
    
    var body: some View {
        ZStack{
            //背景画像を表示する
            BackgroundView(imageName: "background")
            //水平にレイアウト(横方向にレイアウト)
            HStack{
                //シンバルボタン
                Button{
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }label: {
                    //画像を表示する
                    Image("cymbal")
                }
                
                //ギターボタン
                Button {
                    //ギターのボタンを鳴らす
                    soundPlayer.guitarPlay()

                } label: {
                    //画像を表示する
                    Image("guitar")
                }
            }
        }//ZStack　ここまで
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
