import UIKit
class AchievementsFinalViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    @IBOutlet weak var probabilityOfWin: UILabel!
    @IBOutlet weak var endName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
  //hello world
    override func viewDidLoad() {
      super.viewDidLoad()
      imagePicker.delegate = self
      imageView.isHidden = true
      probabilityOfWin.text = "You had a 00% chance of survival. Covid wiped you out. you are dead."
    }
    @IBAction func SelfieTapped(_ sender: UIButton) {
      imagePicker.sourceType = .camera
      present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func PhotoLibraryTapped(_ sender: UIButton) {
      imagePicker.sourceType = .photoLibrary
      present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      //update our phote with selected photo
      if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
        imageView.image = selectedImage
        imageView.isHidden = false
      }
      //Go back to viewController
      imagePicker.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
    }
    */
  }
