//
//  BackgroundView.swift
//  MyMusic
//
//  Created by 持田晴生 on 2023/04/19.
//

import SwiftUI

struct BackgroundView: View {
    //画像ファイル名
    let imageName: String
    
    var body: some View {
        Image(imageName)
        // リサイズする
            .resizable()
        //画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
        //アスペクト比（縦横比）を維持して短編基準におさまるようにする
            .scaledToFit()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}
