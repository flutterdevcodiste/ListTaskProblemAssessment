# README #

Code repository for List Task Problem.

### What is this repository for? ###

This Flutter app aims to solve the problem of resetting a counter in List Task.

# Getting Started

**The following steps need to be performed to achieve the desired outcome:**

**Step 1:**

Convert ListWidget to a StatefulWidget: In order to initialize the counter List[] outside the build
method, it is recommended to convert the ListWidget to a StatefulWidget. This allows the build
method being called automatically whenever there is a call to setState().

**Step 2:**

Convert ListItemWidget to a StatelessWidget: Since the counter value is updated from the parent view
and not within the ListItemWidget itself, it is advisable to convert ListItemWidget to a
StatelessWidget. This ensures that the state of the widget is not updated internally, optimizing the
overall performance.

**Step 3:**

Handling the counter in separate list items: One of the main challenges in the given task is that
the counter is added and increased from its view. Dart language supports garbage collection, and
Lists take advantage of this feature. However, if a view is not in the picture, it can occupy memory
and be re-initialized once it comes back into view. This can lead to the counter becoming zero. To
address this issue, it is essential to update the counter in separate list items.
