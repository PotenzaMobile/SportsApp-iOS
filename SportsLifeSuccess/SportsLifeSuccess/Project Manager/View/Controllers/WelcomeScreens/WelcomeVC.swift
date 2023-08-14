//
//  WelcomeVC.swift
//  SportsLifeSuccess
//
//  Created by Potenza on 11/08/23.
//

import UIKit

class WelcomeVC: UIViewController, UIScrollViewDelegate {

    //MARK: IB_OUTLETS
    @IBOutlet weak var scrllView: UIScrollView!
    @IBOutlet weak var colView: UICollectionView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var pagerControl: UIPageControl!
    
    
    //MARK: DECLARATIONS
    var arrWelcomeText = [StringConstants.kWelcomeText1,StringConstants.kWelcomeText2,StringConstants.kWelcomeText3]
    var arrWelcomeDesc = [StringConstants.kWelcomeDes1,StringConstants.kWelcomeDes2,StringConstants.kWelcomeDes2]
    var arrImage = [ImageConstants.kWelcome1,ImageConstants.kWelcome2,ImageConstants.kWelcome3]
    
    
    //MARK: VIEW_METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
    }
    
    
    //MARK: IB_ACTIONS
    @objc func pageControlValueChanged(_ sender: UIPageControl) {
        let selectedPageIndex = sender.currentPage
        let xOffset = CGFloat(selectedPageIndex) * self.colView.frame.size.width
        self.colView.setContentOffset(CGPoint(x: xOffset, y: 0), animated: true)
        
        if selectedPageIndex < (self.arrWelcomeText.count - 1) { //0,1
            self.btnNext.setTitle(TitleMessages.kNext, for: .normal)
        } else if selectedPageIndex == (self.arrWelcomeText.count - 1) {
            self.btnNext.setTitle(TitleMessages.kDone, for: .normal)
        } else {
            
        }
        
        
    }
    
    @objc func btnNextClick(_ sender : UIButton) {
        var currentPage = self.pagerControl.currentPage
        currentPage += 1
        self.pagerControl.currentPage = currentPage
        let xOffset = CGFloat(currentPage) * self.colView.frame.size.width
        self.colView.setContentOffset(CGPoint(x: xOffset, y: 0), animated: true)
        
        if currentPage < (self.arrWelcomeText.count - 1) { //0,1
            self.btnNext.setTitle(TitleMessages.kNext, for: .normal)
        } else if currentPage == (self.arrWelcomeText.count - 1) {
            self.btnNext.setTitle(TitleMessages.kDone, for: .normal)
        }
    }
    
    @objc func btnSkipClick(_ sender : UIButton) {
        
    }
    
    //MARK: OTHER_METHODS
    func setUpView() {
        self.setUpCollection()
        self.configureButtons()
        self.pagerControl.numberOfPages = arrWelcomeText.count
        self.pagerControl.addTarget(self, action: #selector(self.pageControlValueChanged(_:)), for: .valueChanged)
        self.scrllView.delegate = self
        
        pagerControl.pageIndicatorTintColor = UIColor.lightGray
    }
     
    func configureButtons() {
        self.btnNext.addTarget(self, action: #selector(self.btnNextClick(_:)), for: .touchUpInside)
    }
    
    func setUpCollection() {
        self.colView.register(UINib(nibName: "WelcomeCVCell", bundle: nil), forCellWithReuseIdentifier: "WelcomeCVCell")
        self.colView.delegate = self
        self.colView.dataSource = self
        self.colView.reloadData()
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pagerControl.currentPage = Int(pageNumber)
        
        if Int(pageNumber) < (self.arrWelcomeText.count - 1) { //0,1
            self.btnNext.setTitle(TitleMessages.kNext, for: .normal)
        } else if Int(pageNumber) == (self.arrWelcomeText.count - 1) {
            self.btnNext.setTitle(TitleMessages.kDone, for: .normal)
        }
    }
}

extension WelcomeVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.arrWelcomeText.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WelcomeCVCell", for: indexPath) as! WelcomeCVCell
        let inx = indexPath.row
        cell.lblTitle.text = self.arrWelcomeText[inx]
        cell.lblDesc.text = self.arrWelcomeDesc[inx]
        cell.bgImage.image = self.arrImage[inx]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
