//
//  HomeView.swift
//  vote
//
//  Created by Kazunari Hirosawa on 2021/08/04.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        // TabView
        
        TabView {

            // 1. 投票ルーム一覧
            NavigationView {
                RoomListView()
            }
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("ルーム")
                }
            
            // 2. 投票ルームの作成
            NavigationView {
                CreateRoomView()
            }
                .tabItem {
                    Image(systemName: "plus")
                    Text("作成")
                }
            
            // 3. 通知
            NavigationView {
                Text("C")
                    .padding()
                    .navigationTitle("通知")
                    .navigationBarTitleDisplayMode(.inline)
            }
                .tabItem {
                    Image(systemName: "bell")
                    Text("通知")
                }
            
            // 4. 設定
            NavigationView {
                Text("D")
                    .padding()
                    .navigationTitle("設定")
                    .navigationBarTitleDisplayMode(.inline)

            }
                .tabItem {
                    Image(systemName: "gear")
                    Text("設定")
                }
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
