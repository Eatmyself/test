//
//  ContentView.swift
//  kyube
//
//  Created by Eatmyself on 2020/9/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //Ring
            Group{
                Path { (path) in
                path.move(to: CGPoint(x: 110, y: 442))
                path.addQuadCurve(to: CGPoint(x: 5, y: 405), control: CGPoint(x: 40, y: 400))
                }
                .stroke(Color(red: 148/255, green: 144/255, blue: 109/255),lineWidth: 10)
                
                Path { (path) in
                path.move(to: CGPoint(x: 110, y: 442))
                path.addQuadCurve(to: CGPoint(x: 5, y: 405), control: CGPoint(x: 40, y: 400))
                }
                .stroke(Color(red: 148/255, green: 144/255, blue: 109/255),lineWidth: 10)
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }
            
            //head
            Group{
                Path { (path) in
                path.move(to: CGPoint(x: 155, y: 207))
                path.addQuadCurve(to: CGPoint(x: 255, y: 207), control: CGPoint(x: 200, y: 197))
                //mouth
                path.move(to: CGPoint(x: 185, y: 350))
                path.addQuadCurve(to: CGPoint(x: 207, y: 350), control: CGPoint(x: 190, y: 370))
                    
                path.move(to: CGPoint(x: 170, y: 205))
                path.addQuadCurve(to: CGPoint(x: 90, y: 130), control: CGPoint(x: 130, y: 150))
                path.addQuadCurve(to: CGPoint(x: 130, y: 215), control: CGPoint(x: 125, y: 190))
                path.addQuadCurve(to: CGPoint(x: 80, y: 330), control: CGPoint(x: 70, y: 260))
                path.addQuadCurve(to: CGPoint(x: 207, y: 390), control: CGPoint(x: 90, y: 390))
                path.move(to: CGPoint(x: 90, y: 130))
                path.addQuadCurve(to: CGPoint(x: 100, y: 220), control: CGPoint(x: 90, y: 190))
                path.move(to: CGPoint(x: 128, y: 205))
                path.addQuadCurve(to: CGPoint(x: 70, y: 270), control: CGPoint(x: 80, y: 230))
                path.addQuadCurve(to: CGPoint(x: 50, y: 350), control: CGPoint(x: 55, y: 300))
                path.addQuadCurve(to: CGPoint(x: 35, y: 400), control: CGPoint(x: 47, y: 370))
                path.addQuadCurve(to: CGPoint(x: 0, y: 450), control: CGPoint(x: 17, y: 430))
                path.move(to: CGPoint(x: 85, y: 345))
                path.addQuadCurve(to: CGPoint(x: 80, y: 430), control: CGPoint(x: 90, y: 400))
                path.addQuadCurve(to: CGPoint(x: 57, y: 500), control: CGPoint(x: 70, y: 480))
                path.addQuadCurve(to: CGPoint(x: 15, y: 560), control: CGPoint(x: 45, y: 530))
                path.addQuadCurve(to: CGPoint(x: 35, y: 500), control: CGPoint(x: 20, y: 530))
                path.addQuadCurve(to: CGPoint(x: -20, y: 560), control: CGPoint(x: 23, y: 530))
                path.addQuadCurve(to: CGPoint(x: 10, y: 490), control: CGPoint(x: -10, y: 530))
                path.addQuadCurve(to: CGPoint(x: 0, y: 505), control: CGPoint(x: 5, y: 500))
                path.addLine(to: CGPoint(x: 0, y: 450))
                }
                .stroke()
                
                Path { (path) in
                    path.move(to: CGPoint(x: 185, y: 350))
                    path.addQuadCurve(to: CGPoint(x: 207, y: 350), control: CGPoint(x: 190, y: 370))
                    path.move(to: CGPoint(x: 170, y: 205))
                    path.addQuadCurve(to: CGPoint(x: 90, y: 130), control: CGPoint(x: 130, y: 150))
                    path.addQuadCurve(to: CGPoint(x: 130, y: 215), control: CGPoint(x: 125, y: 190))
                    path.addQuadCurve(to: CGPoint(x: 80, y: 330), control: CGPoint(x: 70, y: 260))
                    path.addQuadCurve(to: CGPoint(x: 207, y: 390), control: CGPoint(x: 90, y: 390))
                    path.move(to: CGPoint(x: 90, y: 130))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 220), control: CGPoint(x: 90, y: 190))
                    path.move(to: CGPoint(x: 128, y: 205))
                    path.addQuadCurve(to: CGPoint(x: 70, y: 270), control: CGPoint(x: 80, y: 230))
                    path.addQuadCurve(to: CGPoint(x: 50, y: 350), control: CGPoint(x: 55, y: 300))
                    path.addQuadCurve(to: CGPoint(x: 35, y: 400), control: CGPoint(x: 47, y: 370))
                    path.addQuadCurve(to: CGPoint(x: 0, y: 450), control: CGPoint(x: 17, y: 430))
                    path.move(to: CGPoint(x: 85, y: 345))
                    path.addQuadCurve(to: CGPoint(x: 80, y: 430), control: CGPoint(x: 90, y: 400))
                    path.addQuadCurve(to: CGPoint(x: 57, y: 500), control: CGPoint(x: 70, y: 480))
                    path.addQuadCurve(to: CGPoint(x: 15, y: 560), control: CGPoint(x: 45, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 35, y: 500), control: CGPoint(x: 20, y: 530))
                    path.addQuadCurve(to: CGPoint(x: -20, y: 560), control: CGPoint(x: 23, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 10, y: 490), control: CGPoint(x: -10, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 0, y: 505), control: CGPoint(x: 5, y: 500))
                    path.addLine(to: CGPoint(x: 0, y: 450))
                }
                .stroke()
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }
            
            
            
            //pink
            Group{
                Path { (path) in
                path.move(to: CGPoint(x: 128, y: 205))
                path.addQuadCurve(to: CGPoint(x: 99, y: 145), control: CGPoint(x: 125, y: 197))
                path.addQuadCurve(to: CGPoint(x: 110, y: 215), control: CGPoint(x: 105, y: 197))
                }
                .fill(Color(red: 213/255, green: 163/255, blue: 154/255))
                Path { (path) in
                path.move(to: CGPoint(x: 128, y: 205))
                path.addQuadCurve(to: CGPoint(x: 99, y: 145), control: CGPoint(x: 125, y: 197))
                path.addQuadCurve(to: CGPoint(x: 110, y: 215), control: CGPoint(x: 105, y: 197))
                }
                .fill(Color(red: 213/255, green: 163/255, blue: 154/255))
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                
                Path { (path) in
                    path.move(to: CGPoint(x: 76, y: 443))
                    path.addQuadCurve(to: CGPoint(x: 57, y: 500), control: CGPoint(x: 70, y: 480))
                    path.addQuadCurve(to: CGPoint(x: 15, y: 560), control: CGPoint(x: 45, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 35, y: 500), control: CGPoint(x: 20, y: 530))
                    path.addQuadCurve(to: CGPoint(x: -20, y: 560), control: CGPoint(x: 23, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 10, y: 490), control: CGPoint(x: -10, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 0, y: 505), control: CGPoint(x: 5, y: 500))
                    path.addLine(to: CGPoint(x: 0, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 23, y: 420), control: CGPoint(x: 0, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 76, y: 443), control: CGPoint(x: 30, y: 430))
                }
                .fill(Color(red: 255/255, green: 240/255, blue: 249/255))
                
                Path { (path) in
                    path.move(to: CGPoint(x: 76, y: 443))
                    path.addQuadCurve(to: CGPoint(x: 57, y: 500), control: CGPoint(x: 70, y: 480))
                    path.addQuadCurve(to: CGPoint(x: 15, y: 560), control: CGPoint(x: 45, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 35, y: 500), control: CGPoint(x: 20, y: 530))
                    path.addQuadCurve(to: CGPoint(x: -20, y: 560), control: CGPoint(x: 23, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 10, y: 490), control: CGPoint(x: -10, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 0, y: 505), control: CGPoint(x: 5, y: 500))
                    path.addLine(to: CGPoint(x: 0, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 23, y: 420), control: CGPoint(x: 0, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 76, y: 443), control: CGPoint(x: 30, y: 430))
                }
                .fill(Color(red: 255/255, green: 240/255, blue: 249/255))
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }
            
            
            //ring2
            Group{
            Path { (path) in
                path.move(to: CGPoint(x: 113, y: 440))
                path.addQuadCurve(to: CGPoint(x: 5, y: 400), control: CGPoint(x: 40, y: 440))
                }
                .stroke(Color(red: 255/255, green: 246/255, blue: 178/255),lineWidth: 10)
                Path { (path) in
                path.move(to: CGPoint(x: 80, y: 427))
                path.addQuadCurve(to: CGPoint(x: 33, y: 406), control: CGPoint(x: 60, y: 415))
                }
                .stroke(Color(red: 255/255, green: 255/255, blue: 255/255),lineWidth: 13)
                    
                Path { (path) in
                path.move(to: CGPoint(x: 113, y: 440))
                path.addQuadCurve(to: CGPoint(x: 5, y: 400), control: CGPoint(x: 40, y: 440))
                }
                .stroke(Color(red: 255/255, green: 246/255, blue: 178/255),lineWidth: 10)
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                Path { (path) in
                path.move(to: CGPoint(x: 80, y: 427))
                path.addQuadCurve(to: CGPoint(x: 33, y: 406), control: CGPoint(x: 60, y: 415))
                }
                .stroke(Color(red: 255/255, green: 255/255, blue: 255/255),lineWidth: 13)
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }
            
            //eyes
            Group{
                Path(ellipseIn: CGRect(x: 120, y: 290, width: 30,
                height: 30))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                Path(ellipseIn: CGRect(x: 127, y: 297, width: 17,
                height: 17))
                    .fill(Color(red: 107/255, green: 16/255, blue: 36/255))
                Path(ellipseIn: CGRect(x: 123, y: 297, width: 10,
                height: 10))
                    .fill(Color(red: 1255/255, green: 255/255, blue: 255/255))
                
                Path(ellipseIn: CGRect(x: 260, y: 290, width: 30,
                height: 30))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                Path(ellipseIn: CGRect(x: 267, y: 297, width: 17,
                height: 17))
                    .fill(Color(red: 107/255, green: 16/255, blue: 36/255))
                Path(ellipseIn: CGRect(x: 263, y: 297, width: 10,
                height: 10))
                    .fill(Color(red: 1255/255, green: 255/255, blue: 255/255))
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 8,
                height: 20))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(200))
                    .offset(x: -400, y: 55)
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 6,
                height: 15))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(200))
                    .offset(x: -375, y: 65)
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 4,
                height: 15))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(190))
                    .offset(x: -353, y: 100)
                
            }
            
            //point
            Group{
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 8,
                height: 20))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(200))
                    .offset(x: -400, y: 55)
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 6,
                height: 15))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(200))
                    .offset(x: -375, y: 65)
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 4,
                height: 15))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(190))
                    .offset(x: -353, y: 100)
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 8,
                height: 20))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(200))
                    .offset(x: -400, y: 55)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 6,
                height: 15))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(200))
                    .offset(x: -375, y: 65)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                Path(ellipseIn: CGRect(x: 10, y: 460, width: 4,
                height: 15))
                    .fill(Color(red: 150/255, green: 33/255, blue: 69/255))
                    .rotationEffect(.degrees(190))
                    .offset(x: -353, y: 100)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
            }
            
            //hole
            Group{
                Path(ellipseIn: CGRect(x: 70, y: 230, width: 50,
                height: 50))
                    .fill(Color(red: 70/255, green: 13/255, blue: 10/255))
                Path(ellipseIn: CGRect(x: 65, y: 230, width: 40,
                height: 40))
                    .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                
                Path(ellipseIn: CGRect(x: 327, y: 300, width: 50,
                height: 50))
                    .fill(Color(red: 70/255, green: 13/255, blue: 10/255))
                Path(ellipseIn: CGRect(x: 340, y: 302, width: 45,
                height: 45))
                    .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                
                Path(ellipseIn: CGRect(x: 250, y: 270, width: 50,
                height: 50))
                    .fill(Color(red: 70/255, green: 13/255, blue: 10/255))
                Path(ellipseIn: CGRect(x: 251, y: 275, width: 40,
                height: 40))
                    .fill(Color(red: 210/255, green: 210/255, blue: 210/255))
            }
            Text("Kyubey")
                .font(.caption)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
