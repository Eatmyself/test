//
//  list.swift
//  book
//
//  Created by Eatmyself on 2020/10/16.
//

import SwiftUI

struct list: View {
    var body: some View {
        let snakesc=[
            snake(name:"原色",engname:"Normal"
                  ,pictures:["原色1","原色2","原色3"]
                  ,about:"玉米蛇又稱作紅鼠蛇以及玉米錦蛇，是一種原產於北美洲的食鼠蛇，由於常出現在玉米倉庫而得名(玉米多老鼠就多)，體色以紅黑黃三色組合而成"),
            snake(name:"白化",engname:"amel"
                  ,pictures:["白化1","白化2","白化3"]
                  ,about:"白化就是缺乏體內黑色素，白化玉米因為無黑色素，故剩餘紅色與黃色"),
            snake(name:"血紅",engname:"Diffused"
                  ,pictures:["血紅1","血紅2","血紅3"]
                  ,about:"擴散或俗稱血紅，這種基因會讓玉米全身都表現出深紅色但仍保存有黑色素。他除了體色改變，也會改變體紋的側面跟腹紋"),
            snake(name:"栗子",engname:"Kastanie"
                  ,pictures:["栗子1","栗子2","栗子3","栗子4"]
                  ,about:"或者稱為松果玉米，這基因發現較晚，這種基因的表現類似碳黑，但體色有更多的棕色跟橙色表現，故取名為栗子"),
            snake(name:"焦糖",engname:"Caramel"
                  ,pictures:["焦糖1","焦糖2","焦糖3"]
                  ,about:"體色的紅色會改由黃色素取代，所以焦糖的幼蛇, 長越大黃色的濃度會越高"),
            snake(name:"碳黑",engname:"Anery"
                  ,pictures:["碳黑1","碳黑2","碳黑3"]
                  ,about:"缺紅的表現，讓玉米蛇無法表現紅色素而剩黑黃白等顏色，所以碳黑玉米並不是全黑的體色"),
            snake(name:"木炭",engname:"Charcoal"
                  ,pictures:["木炭1","木炭2","木炭3"]
                  ,about:"低飽和黑色，銀灰色，玉米蛇身上的紋路顏色較接近，木炭系統的玉米紋路會略淡"),
            snake(name:"煤渣",engname:"Cinder"
                  ,pictures:["煤渣1","煤渣2","煤渣3"]
                  ,about:"紅色體色被轉變為酒紅灰底，黃色會幾乎消失，此品系台灣不好找"),
            snake(name:"薰衣草",engname:"Lavender"
                  ,pictures:["薰衣草1","薰衣草2","薰衣草3","薰衣草4"]
                  ,about:"薰衣草基因會讓玉米身上的體色轉為灰色調為主的粉色為點綴的模樣，這種基因也會讓玉米的眼睛變成紅寶石色"),
            ]
        let snakesp=[
            snake(name:"甜甜圈",engname:"Motely"
                  ,pictures:["甜甜圈1","甜甜圈2","甜甜圈3"]
                  ,about:"甜甜圈就是玉米蛇背部的紋路會轉變成一圈一圈的紋路，腹紋會出現白色搭配少量底色的模樣"),
            snake(name:"直線",engname:"Striped"
                  ,pictures:["直線1","直線2","直線3"]
                  ,about:"直線基因會把玉米的紋路由鞍紋改為從頸部往下一路到底的直線，運氣不好紋路是會斷的，腹紋會出現白色搭配少量底色的模樣"),
            snake(name:"泰莎瑞",engname:"Tessera"
                  ,pictures:["泰莎瑞1","泰莎瑞2","泰莎瑞3"]
                  ,about:"泰莎瑞是玉米少數的顯性體紋基因，他的紋路背上類似直線，但直線內的鱗片顏色較淡，另外體側也會表現出破花紋路."),
        ]
            
            
        NavigationView {
            List{
                Section(header:Text("顏色")){
                    ForEach(0..<snakesc.count){(i)in
                        NavigationLink(destination: detail(s: snakesc[i])) {
                            snakerow(s:snakesc[i])
                        }
                    }.listRowInsets(EdgeInsets())
                }
                Section(header:Text("花紋")){
                    ForEach(0..<snakesp.count){(i)in
                        NavigationLink(destination: detail(s: snakesp[i])) {
                            snakerow(s:snakesp[i])
                        }
                    }.listRowInsets(EdgeInsets())
                }
                

        }
        .navigationTitle("玉米蛇圖鑑")
        }
    }
}

struct list_Previews: PreviewProvider {
    static var previews: some View {
        list()
    }
}
