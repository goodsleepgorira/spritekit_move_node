//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
  
    var birdNode:SKSpriteNode!
    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //背景画像のノードを作成する。
        let backNode = SKSpriteNode(imageNamed: "mountain")
        
        //背景画像のサイズをシーンと同じにする。
        backNode.size = self.frame.size
        
        //背景画像の位置をシーンの中央にする。
        backNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        
        //鳥のノードを作成する。
        birdNode = SKSpriteNode(imageNamed: "bird1")
        
        //鳥の位置をシーンの中央にする。
        birdNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        
        //ノードをシーンに追加する。
        self.addChild(backNode)
        self.addChild(birdNode)
    }
}
