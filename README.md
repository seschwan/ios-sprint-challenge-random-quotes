# Random Quotes

## Instructions

**Please read this entire README to make sure you understand what is expected of you before you begin.**

This sprint challenge is designed to ensure that you are competent with the concepts taught throughout Sprint 14, Other Platforms.

Begin by forking this repository. Clone your forked repository to your machine. There is no starter project. Create a project for this challenge in this repository and commit as appropriate while you work. Push your final project to GitHub, then create a pull request back to this original repository.

**You will have 3 hours to complete this sprint challenge**

If you have any questions about the project requirements or expectations, ask your PM or instructor. Good luck!

## Screen Recording

![randomquoteswatchscreenrecording](https://user-images.githubusercontent.com/16965587/47554459-99303e00-d8c6-11e8-9572-68c08e794e07.gif)
![randomquotestodayextensionscreenrecording](https://user-images.githubusercontent.com/16965587/47554458-99303e00-d8c6-11e8-9b24-ebafb2f0e333.gif)

## Requirements

The goal of this sprint challenge is to create a iOS Today Extension and a WatchOS app that shows a random quote. You will use [this API](https://market.mashape.com/andruxnet/random-famous-quotes). This is another Mashape API, so you will need to create a new application on Mashape if you don't have one already. Make sure to add your mashape key in your request's headers.

The requirements for this project are as follows:

- A shared codebase for your model object and any necessary code related to it, such as initializing it, fetching it from the API, etc.
- A Today Extension that fetches and shows a random quote
- A WatchOS app extension (no complication or notification scene) that also fetches and shows a random quote

## Go Further

* Add the ability to refresh the quote on both the Today Extension and Watch app.
* In the Today Extension implement the ability to dynamically size the extension based on the length of the quote when the user taps "Show More", not just a fixed expanded size.
