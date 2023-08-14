//
//  UILabel+Extension.swift
//  iPromise
//
//  Created by Apple on 21/03/23.
//

import UIKit

//extension UILabel{
//    class func textWidth(font: UIFont, text: String) -> CGFloat {
//        let myText = text as NSString
//        
//        let rect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
//        let labelSize = myText.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
//        return ceil(labelSize.width)
//    }
//}
//extension UILabel
//{
// 
//    func setMultiColor(str1:String,str2:String,str3:String,str4:String)
//    {
//        let attrs1 = [NSAttributedString.Key.font : UIFont.customFont(font: .bold, size: 16), NSAttributedString.Key.foregroundColor : color.blackColor()!]  as [NSAttributedString.Key : Any]
//        
//        let attrs2 = [NSAttributedString.Key.font : UIFont.customFont(font: .regular, size: 16), NSAttributedString.Key.foregroundColor : color.blackColor()!]  as [NSAttributedString.Key : Any]
//
//        let attrs3 = [NSAttributedString.Key.font : UIFont.customFont(font: .bold, size: 16), NSAttributedString.Key.foregroundColor : color.primaryColor()!]  as [NSAttributedString.Key : Any]
//        
//        let attrs4 = [NSAttributedString.Key.font : UIFont.customFont(font: .regular, size: 16), NSAttributedString.Key.foregroundColor : color.blackColor()!]  as [NSAttributedString.Key : Any]
//
//        let attributedString1 = NSMutableAttributedString(string:str1, attributes:attrs1)
//        
//        let attributedString2 = NSMutableAttributedString(string:str2, attributes:attrs2)
//
//        let attributedString3 = NSMutableAttributedString(string:str3, attributes:attrs3)
//        
//        let attributedString4 = NSMutableAttributedString(string:str4, attributes:attrs4)
//
//        attributedString1.append(attributedString2)
//        attributedString1.append(attributedString3)
//        attributedString1.append(attributedString4)
//        self.attributedText = attributedString1
//    }
//}
//
