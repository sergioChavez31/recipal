# How to Download and Run

## Requirements

Before running the project, make sure you have:

* A Mac computer
* [Xcode](https://developer.apple.com/xcode/) installed
* A GitHub account
* Git installed on your computer
* An iPhone or an iOS Simulator compatible with the project's deployment target

## 1. Clone the Repository

Open Terminal and navigate to the folder where you want to store the project.

Then clone the repository:

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

For example:

```bash
git clone https://github.com/username/project-name.git
```

Navigate into the project folder:

```bash
cd project-name
```

## 2. Open the Project in Xcode

Find the project folder you just downloaded and open it.

If the project uses an `.xcodeproj` file, open:

```text
ProjectName.xcodeproj
```

If the project uses an `.xcworkspace` file, open:

```text
ProjectName.xcworkspace
```

**Important:** If the project uses CocoaPods, Swift Package Manager, or another dependency manager, make sure you open the appropriate workspace/project file specified by the project.

## 3. Allow Xcode to Download Dependencies

This project uses Swift Package Manager for its external dependencies.

When the project is first opened, Xcode may automatically download the required packages. You can also go to:

**File → Packages → Resolve Package Versions**

Wait for Xcode to finish downloading and resolving the dependencies before trying to build the project.

## 4. Configure Firebase

This project uses Firebase for its backend services.

You will need a Firebase project configured for the application. The Firebase configuration file may not be included in the repository for security reasons.

If the repository does not contain the Firebase configuration file:

1. Create or access the Firebase project associated with the application.
2. Register the iOS application in Firebase.
3. Download the `GoogleService-Info.plist` file.
4. Add the file to the Xcode project.
5. Make sure **"Copy items if needed"** is selected when adding the file.
6. Confirm that the file is included in the application's target.

Without the required Firebase configuration, Firebase features such as authentication and Firestore may not work.

## 5. Select a Device or Simulator

At the top of Xcode, select the device or simulator you want to use.

For example:

```text
iPhone 16 Pro
```

You can also connect a physical iPhone to your Mac and select it as the target device.

## 6. Build and Run

Click the **Run ▶** button in the top-left corner of Xcode.

Alternatively, use:

```text
Command + R
```

Xcode will build the application and launch it on the selected simulator or device.

## Troubleshooting

### Packages are not loading

Try:

**File → Packages → Reset Package Caches**

Then:

**File → Packages → Resolve Package Versions**

### Firebase is not working

Make sure:

* `GoogleService-Info.plist` has been added to the project.
* The file is included in the correct target.
* Firebase dependencies have been successfully downloaded.
* The Firebase project is configured for the correct iOS bundle identifier.

### Xcode cannot find a package

Try:

**File → Packages → Resolve Package Versions**

If that does not work, close Xcode, reopen the project, and try again.

### Build errors occur after cloning

Make sure you are using a compatible version of Xcode and that all Swift Package dependencies have finished resolving before building the project.
