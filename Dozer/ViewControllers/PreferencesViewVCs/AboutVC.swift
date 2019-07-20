import Cocoa
import Sparkle

class AboutVC: NSViewController {

  @IBOutlet var VersionLabel: NSTextField!
  @IBOutlet var CheckForUpdates: NSButton!
  
  override func viewDidLoad() {
  super.viewDidLoad()
    self.preferredContentSize = NSSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
    
    // check for updates button
    CheckForUpdates.target = SUUpdater.shared()!
    CheckForUpdates.action = #selector(SUUpdater.shared()!.checkForUpdates(_:))
  }

  override func viewDidAppear() {
    super.viewDidAppear()
    // set title
    self.view.window?.title = self.title!
    
    // set version
    if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
        VersionLabel.stringValue = "Version \(version)"
      }
    
  }
  
  @IBAction func OpenInGithubPressed(_ sender: NSButton) {
    let githubURL = URL(string: "https://github.com/micahstubbs/open-dozer")!
    NSWorkspace.shared.open(githubURL)
  }
}
