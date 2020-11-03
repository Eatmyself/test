//
//  ContentView.swift
//  Emoji
//
//  Created by Eatmyself on 2020/10/28.
//

import SwiftUI


struct ContentView: View {
@State private var s: Double = 255
@State private var l: Double = 0.7
@State private var selectedIndex = 0
@State private var bgColor = Color.white
@State private var mood = 0
@State private var pic: CGFloat = 1
@State private var str = ""
@State private var day = Date()
@State private var font: CGFloat = 20
@State private var isExpanded = true
@State private var isPresented = false
var emoji=[["QAQ","｡ﾟヽ(ﾟ´Д`)ﾉﾟ｡","இдஇ","(╥﹏╥)","( ´•̥̥̥ω•̥̥̥` )","(;´༎ຶД༎ຶ`)","..."],
           ["(*´∀`)~♥","ヽ(∀ﾟ )人( ﾟ∀)人(∀ﾟ )人(ﾟ∀ﾟ)人( ﾟ∀)ﾉ","(*‘ v`*)","ヽ(✿ﾟ▽ﾟ)ノ","(´▽`ʃ♡ƪ)","(σ′▽‵)′▽‵)σ","XD"],
           ["(ﾒ ﾟ皿ﾟ)ﾒ","(╬☉д⊙)","(╬ﾟдﾟ)▄︻┻┳═一","눈言눈","•_ゝ•","(ꐦ°᷄д°᷅)","OAO"],
           ["_(:3 」∠ )_","( Φ ω Φ )","ლ(・´ｪ`・ლ)","( ͡ʘ ͜ʖ ͡ʘ)","༼ ༎ຶ ෴ ༎ຶ༽","┐(´д`)┌","(　◜◡‾)"]]
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack{
                    Image("b\(Int(pic))")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.width / 4 * 3)
                        .clipped()
                        .contrast(l)
                        .colorMultiply(bgColor)
                    VStack{
                        Text("\n\(emoji[mood][selectedIndex])")
                        Text("\n\(str)")
                    }
                    .foregroundColor(Color(red: s/255, green: s/255, blue: s/255))
                    .font(.system(size: font))
                    if isExpanded{
                    Text(day, style: .date)
                        .offset(x: 110, y: 125)
                        .foregroundColor(Color(red: s/255, green: s/255, blue: s/255))
                        .font(.system(size: 10))
                    }
                }
                Form {
                    HStack{
                        Text("Image")
                            .font(.subheadline)
                        Slider(value: $pic, in: 1...10, step: 1)
                            .accentColor(.gray)
                    }
                    Picker(selection: $mood, label: Text("mood")) {
                        Text("難過").tag(0)
                        Text("開心").tag(1)
                        Text("憤怒").tag(2)
                        Text("WTF").tag(3)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Picker(selection: Binding(
                        get: { self.selectedIndex },
                        set: { self.selectedIndex = $0 }
                    ), label: Text("選擇")) {
                                ForEach(emoji[mood].indices) { (index) in
                                   Text(emoji[mood][index])
                        }
                    }
                    .frame(width: 300, height: 50)
                    .clipped()
                    .pickerStyle(WheelPickerStyle())
                    Toggle("是否顯示日期", isOn: $isExpanded)
                        .toggleStyle(SwitchToggleStyle(tint: Color.gray))
                    if isExpanded{
                        DatePicker("日期", selection: $day, displayedComponents: .date)
                    }
                    DisclosureGroup("more"){
                        HStack{
                            Text("文字顏色")
                                .font(.subheadline)
                            Slider(value: $s, in: 0...255)
                            .accentColor(.gray)
                        }
                        HStack{
                            Text("背景明顯")
                                .font(.subheadline)
                            Slider(value: $l, in: 0...3)
                            .accentColor(.gray)
                        }
                        HStack{
                            Text("心情小語")
                                .font(.subheadline)
                            TextField("曾經愛過", text: $str)
                        }
                        Stepper(value: $font, in: 10...60) {
                            Text("字體大小：\(Int(font)) ")
                        }
                        ColorPicker("背景色調", selection: $bgColor)
                    }
                }
                Button("找安慰?") {
                    isPresented=true
                }
                .foregroundColor(.white)
                .sheet(isPresented: $isPresented) {
                    FullScreenModalView()
                }
                .padding(.horizontal, 4.0)
                .background(Color.gray)
                .cornerRadius(40)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.gray, lineWidth: 3)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FullScreenModalView: View {
    var Chickensoup=["沒事，明天也不會更好","年輕時多吃苦\n老了就會習慣","不要因為沒錢就忽視自己的健康\n畢竟\n以後沒錢的日子還很多","有時候不努力一下\n不知道什麼叫絕望","好好活下去\n每天都有新打擊","別害怕別人怎麼看你\n因為沒有人在看你","單身是一種選擇\n只不過不是我選的","人生本來就是起起落落落落落","別想了，機會不是屬於你的"]
    var body: some View {
        let number=Int.random(in: 1...10)
        let s=Chickensoup.randomElement()!
        Image("b\(number)")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipped()
        Text("\(s)")
            .font(.system(size: 20))
    }
}
