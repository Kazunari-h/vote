//
//  CreateRoomView.swift
//  vote
//
//  Created by Kazunari Hirosawa on 2021/08/06.
//

import SwiftUI

struct CreateRoomView: View {
    
    @State var roomName: String = ""
    @State var isPublic: Bool = false
    @State var isModalActive: Bool = false

    @ObservedObject var presenter: CreateRoomPresenter
    
    init() {
        presenter = CreateRoomPresenter()
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {

            VStack(alignment: .leading) {
                // タイトル
                Text("ルーム名")
                    .font(.system(size: 14))
                    .fontWeight(.bold)

                // ルーム名
                TextField("ルーム名", text: $roomName)
                    .padding(10)
                    .border(Color.blue, width: 1)
                
                Spacer()
                    .frame(height: 25)
            }
            
            // 質問リスト
            Text("質問の追加")
                .font(.system(size: 14))
                .fontWeight(.bold)

            VStack(alignment: .center, spacing: 10){
                Text("Swiftはいつから導入されたの?")
                Text("Swiftはいつから導入されたの?")
                Text("Swiftはいつから導入されたの?")
            }
            .padding(20)

            Button(action: {
                self.isModalActive.toggle()
            }, label: {
                Image(systemName: "plus.circle")
                    .frame(width: 44, height: 44, alignment: .center)
            })
                .frame(maxWidth: .infinity)
                .sheet(isPresented: $isModalActive) {
                    Text("わくわく")
                        .padding()
                }
            
            
            Spacer()
                .frame(height: 25)

            // -> 質問
            // -> 選択肢

            Toggle(isOn: $isPublic, label: {
                Text("公開する")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            })
            Text("※ 公開せずにルームを作成した場合、一覧に表示されません。")
                .font(.system(size: 10))


            Spacer()
            // 公開 or 非公開
            
            Button(action: {
                print("押された")
            }, label: {
                Text("作成する")
                    .fontWeight(.bold)
                    .font(.system(size: 14))
            })
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding(.all, 15)
        .navigationTitle("ルーム作成")
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct CreateRoomView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomView()
    }
}
