# SafariSwipeReproducer

Apple introduced a pretty ridiculous bug in 9.2: when swiping back from Safari View Controller, if the presenting controller has a different `preferredStatusBarStyle`, it will deallocate improperly and cause the entire app to stop responding.

Reproduce this easily, and show your friends, using this project! Sometimes it takes one really good swipe back to active, but occasionally it will fire on the second swipe back instead.

I ultimately want this bug eliminated as soon as possible and with as much publicity as possible because it's been terrorizing Submarine users since 9.2 was released, and it's hilarious.

Enjoy!

![](demo.gif)

**[Demo Video](https://streamable.com/u19b)** (local file available [here](demo.mov))

---

	Copyright (c) 2015 Julian Weiss

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.