# ARDicee

An iOS app that demonstrates various augmented reality elements, both designed from scratch or imported from TurboSquid, using ARKit and SceneKit

## Getting Started

### Prerequisites

First clone the repo to your XCode
```
git clone https://github.com/igibliss00/ARDicee.git
```

and run the app on your real device.  

- The app will not work properly on a simulator since a camera is required.  
- If your device is iPhone 6 or prior, The ARWorldTrackingConfiguration class will not track the device's movment with six degrees of freedom (6DOF): the three rotation axes (roll, pitch, and yaw), and three translation axes (movement in x, y, and z). It is a class that allows the virtual object can appear to stay in the same place relative to the real world, even as the user tilts the device to look above or below the object, or moves the device around to see the object's sides and back.

## Example

Here is an example of the AR element made from The Solar System Scope's [texture!](https://www.solarsystemscope.com/textures/)

![AR of the sun](assets/example.jpeg)

Used ARAnchor to track the surface that the object of interest would be resting, expressed in a grid form

![grid from ARAnchor](assets/grid.jpeg)

Created a button to roll multiple dice at the same time in a randomized manner and another button to delete the dice

![final dice](assets/final.jpeg)
