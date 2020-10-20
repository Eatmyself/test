//
//  other.swift
//  book
//
//  Created by Eatmyself on 2020/10/15.
//

import SwiftUI

struct other: View {
    @State var a=0;
    @State private var rotateDegree0: Double = 0
    @State private var rotateDegree1: Double = 0
    @State private var rotateDegree2: Double = 0
    @State private var rotateDegree3: Double = 0
    @State private var rotateDegree4: Double = 0
    var body: some View {
        ZStack{
            Image("格子")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        Button(action:{a=0
                            rotateDegree0 += 360
                        }){
                        VStack{
                            Group{
                            Image("簡介")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                                .cornerRadius(100)
                            }.rotation3DEffect(.degrees(rotateDegree0),axis: (x: 0.0, y: 1.0, z: 0.0))
                            .animation(.easeOut(duration: 0.5))
                            Text("簡介")
                                .foregroundColor(.primary)
                            }
                        }
                        .animation(.easeOut(duration: 0.5))

                        Button(action:{a=1
                            rotateDegree1 += 360
                        }){
                        VStack{
                            Group{
                            Image("老鼠")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                                .cornerRadius(100)
                            }.rotation3DEffect(.degrees(rotateDegree1),axis: (x: 0.0, y: 1.0, z: 0.0))
                            .animation(.easeOut(duration: 0.5))
                            Text("飼料鼠")
                                .foregroundColor(.primary)
                            }
                        }
                        Button(action:{a=2
                            rotateDegree2 += 360
                        }){
                        VStack{
                            Group{
                            Image("取得")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                                .cornerRadius(100)
                            }.rotation3DEffect(.degrees(rotateDegree2),axis: (x: 0.0, y: 1.0, z: 0.0))
                            .animation(.easeOut(duration: 0.5))
                            Text("取得")
                                .foregroundColor(.primary)
                            }
                        }
                        Button(action:{a=3
                            rotateDegree3 += 360
                        }){
                        VStack{
                            Group{
                            Image("飼養")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                                .cornerRadius(100)
                            }.rotation3DEffect(.degrees(rotateDegree3),axis: (x: 0.0, y: 1.0, z: 0.0))
                            .animation(.easeOut(duration: 0.5))
                            Text("飼養")
                                .foregroundColor(.primary)
                            }
                        }
                        Button(action:{a=4
                            rotateDegree4 += 360
                        }){
                        VStack{
                            Group{
                            Image("我家")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()
                                .cornerRadius(100)
                            }.rotation3DEffect(.degrees(rotateDegree4),axis: (x: 0.0, y: 1.0, z: 0.0))
                            .animation(.easeOut(duration: 0.5))
                            Text("我的孩紙")
                                .foregroundColor(.primary)
                        }
                        }
                        
                    }
                }
                
                ScrollView(showsIndicators: false) {
                    Text("")
                    Text("")
                if a==0{
                    Group{
                        Text("剛孵化的小玉米蛇長度在20-30cm，而成體玉米蛇平均是120cm。")
                        Image("綜合")
                            .resizable()
                            .scaledToFill()
                            .frame(width:UIScreen.main.bounds.width-50)
                            .clipped()
                        Text("成體玉米蛇雄性一般比雌性更長，雌性平均為122cm，雄性平均為138cm。在人工飼養環境下，頭兩年大約每年生長25~38cm，後面三年的生長速度減慢，通常到第六年就不再增加長度。人工飼養環境下，由於技術的發展與成熟，玉米蛇的年齡往往可以超過20年。\n")
                        Text("許多人對蛇類有恐懼感，認為他們有毒且會咬人，也無法想像飼養蛇類的行為。但事實上，並不是每種蛇類都具攻擊性，如玉米蛇，便是數一數二無毒且溫馴的蛇類，大多數的他們終其一生都沒有咬過人，可說是比貓狗更乖巧可愛。")
                        Image("簡介1")
                            .resizable()
                            .scaledToFill()
                            .frame(width:UIScreen.main.bounds.width-50)
                            .clipped()
                        Text("\n玉米蛇的外表擁有極高的變化性，圖鑑頁僅僅是介紹最基本的幾種顏色和花紋，這些基因都可以再細分，另外還有一些效果基因，若是有興趣可自行上網了解。事實上，玉米蛇經常帶有多重基因，顏色花紋效果所排列組合下的產物，便是令人喜愛的玉米蛇。\n")
                        Link("目前最完善的玉米蛇圖鑑", destination: URL(string: "http://iansvivarium.com/morphs/")!)
                    }
                }
                else if a==1{
                    Text("關於玉米蛇的食物，無非就是老鼠、老鼠、和老鼠。\n在野外，玉米們能自己補老鼠來吃，但在人工的環境下而老鼠的獲得方式就比較麻煩了。\n\n養活體：\n有一些比較挑嘴的蛇會只願意吃活體，這時飼主要嘛馴餌讓他習慣吃冷凍過的，要嘛為了他養一箱小白鼠。")
                    Image("小白鼠")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("\n冷凍鼠：\n這是目前最方便的飼養方式，市面上有很多冷凍鼠的賣家，看要是去網路上買還是去知名寵物店買都是可以的。以下為常見的尺寸名稱，可依家中玉米們的嘴巴大小來做選擇。")
                    Image("冷凍鼠")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                }
                else if a==2{
                    Text("在我剛入坑時，FB社團仍是交易的主要途徑。\n然而去年開始FB決定禁止私下的活體交易，因此絕大多爬蟲社團就此消失。現在部分玩家移步至BuddyDo的軟體上進行活體交易。\n\n除了少數被保護的特有種應當被眾人抵制外，大多都是玩家自行培育的蛇類，建議自行評估後再購買。")
                    Image("截圖")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("\n此外也有具實體店面的爬蟲專賣店可供人購買，實體店面一般價格偏高，但是更有保障。")
                    Image("水手")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                }
                else if a==3{
                    Group{
                    Group{
                    Text("接下來是一些準備開始飼養前的準備：\n十加侖的爬寵飼養箱對於一條年輕的玉米蛇是不錯的選擇。在詳細討論飼養環境前，我們必須先強調一點，必須給健康的玉米蛇提供足夠的熱量。沒有足夠的熱量，會造成玉米蛇的疾病甚至死亡。\n\n在獲取玉米蛇之前，一定要確定所有器材都安裝並測試好。這裡是一些必須購買的器材清單：\n")
                        Text("一個結實安全的飼養箱")
                    Image("飼養箱")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    }
                    Group{
                    Text("\n加熱設備")
                    Image("加熱墊")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    
                    Text("\n躲避洞穴")
                    Image("躲避洞穴")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("\n水盆")
                    Image("水盆")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    }
                    Text("\n墊材")
                    Image("墊材")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("最後，記得每週餵食你的小蛇/每月餵食你的大蛇，定期幫他清潔環境，並陪伴他們長大。")
                    }
                }
                else if a==4{
                    Group{
                    Text("接下來是曬兒女時間！我家孩子們什麼的最可愛了大家請都來欣賞他們。\n\n里斯\n2歲\n♂原色泰莎瑞")
                    Image("里斯1")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Image("里斯2")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("這是我的第一隻蛇，小時候顏色很美，長大越來越黯淡了，肥的跟什麼一樣。\n\n沐沐\n2歲\n♀超白化")
                    Image("沐沐1")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Image("沐沐2")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    }
                    Group{
                    Text("這孩子第一年不在我手上，怕人又常常暴衝，但不得不說還是很漂亮，希望未來能和里斯一起給我生幾窩孫子。\n\n希瑟\n1歲\n♀碳黑")
                    Image("希瑟1")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Image("希瑟2")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("希瑟是取名自他頭上像剪刀一樣的頭紋，個性乖巧又可愛，能夠安分地待在人手上不會亂跑而且非常親人。\n\nNULL\n1歲\n♂碳黑泰莎瑞")
                    Image("NULL")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("NULL是他真的沒有名字的意思，由於不能算是我的蛇，所以簡單帶過，是希瑟未來的老公。\n\n瓜仔\n6個月大\n屋頂龜")
                    Image("瓜仔1")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Image("瓜仔2")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width-50)
                        .clipped()
                    Text("沒，這不是蛇，只是我可愛的但咬人很痛的小龜，身為麝香龜的一種，他永遠都會這樣小小隻的。")
                    }
                }
                }
            .padding(.horizontal, 21.0)

            }
        }
    }
}

struct other_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            other()
                .previewDevice("iPhone 11 Pro")
            other()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11 Pro")
        }
    }
}
