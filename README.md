<p align="center">
<img src="logo.png" alt="MAVIC"/>
</p>

MAVIC is an Objective-C design pattern that is the foundation of many iOS applications. The name MAVIC was inherited from its purpose, Model (Automatic) Interactor View Controller, however, instead of referring to it by its natural acronym MAIVC (note the spelling), the name MAVIC was born as more of a natural pronunciation of the pattern.

The MAVIC pattern provides:
* **Clean View Controller(s).** MAVIC separates the heavy lifting away from the view controller, allowing the class to be as decoupled as possible. This will not only benefit your code from a testing perspective, but will also ensure your design is more collaboratively inviting and developer accessible by not potentially adding extraneous lines of code for which the MVC pattern is notorious.
* **Testability and Versatility.** Classes in iOS must live as independently from each other as possible in order to be as reusable as possible. This is what MAVIC does with the (automatic) interactor, allowing each component to be tested individually, and then later be pieced together like a puzzle at the finish line. This leaves the view controller to solely pass information from the interactor to the view and not be responsible for any heavy duty work by itself.
* **Dynamic Class Initializer.** The core concept behind MAVIC is [dynamically initializing interactors][2] and allowing you to send [unresolved messages][3] without disrupting the compiler. As an added bonus, being that the interactor is lazy loaded, it's only ever initialized when needed.

## How does it work?

All of MAVICs magic is rooted in taking advantage of the Clang compiler. More specifically, by combining protocols with the [__kindof][1] keyword, we no longer have to specify which interactor we'll use for the respective view controller. This is then brought to life with the power of [dynamically initializing interactors][2] combined with lazy loading which gives us the benefit of automatically having an interactor ready without having to initialize it manually.

## Can I see it in action?

Absolutely! Start by simply cloning or downloading a copy of the repository and run the example project. You could start exploring the power of MAVIC in the `LoginViewController.m` file.

## Who created it?

MAVIC was authored by Filip Busic (the guy who likes cookies). Feel free to shoot a message to the author via [LinkedIn][4] if you have any questions or ideas on how to make MAVIC better.

## TODO

* Push to Cocoapods
* Develop & integrate memory leak detection

## Credit

To Uber for inspiring the creation of MAVIC with their release of [RIBs][5]. Note, if you're using Swift, [RIBs][5] may be a better fit. However, given that [RIBs][5] is not supported for Objective-C, this may create an impetus for trying MAVIC.

## License

    Copyright (C) 2018 Filip Busic

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
   
   
   
[1]: https://clang.llvm.org/doxygen/classclang_1_1ObjCObjectPointerType.html#af4c50413bd9b87f41d2d57ddc924bb47
[2]: https://github.com/IHEARTCOOKIES/MAVIC/blob/86740a544f9acd45937c24f223bbfb787ef8439f/MAVIC/Base%20Classes/Base%20View%20Controller/BaseViewController.m#L17
[3]: https://github.com/IHEARTCOOKIES/MAVIC/blob/86740a544f9acd45937c24f223bbfb787ef8439f/MAVIC/View%20Controller(s)/Login%20View%20Controller/LoginViewController.m#L17
[4]: https://www.linkedin.com/in/filip-busic
[5]: https://github.com/uber/RIBs

