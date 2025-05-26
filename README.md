# bloc_project

26 may start

# BLocListener
1.Snackbar দেখাতে চাই	
2.Dialog বা Alert দেখাতে চাই	
3.অন্য স্ক্রিনে যেতে চাই (Navigation)	
4.UI rebuild করতে চাই না	
5.BlocBuilder ব্যবহার করা দরকার নেই	

# BLocBuilder
শুধুমাত্র UI build করার জন্য ব্যবহৃত হয়, 
# BlocProvider


# BlocListener, BlocBuilder, এবং BlocProvider — 
# এদের সবাইকে একত্রে বলা হয় BLoC Widgets বা BLoC Utilities

# flutter bloc
1. add dependency
   flutter_bloc: ^9.1.1

 2.  equatable: ^2.0.7
   equatable হল Dart-এর একটি প্যাকেজ যা object comparison সহজ 
 করে তোলে। Dart-এ default ভাবে দুইটি object == দিয়ে compare করলে
তাদের memory reference চেক করে—not their content. equatable 
এটা override করে যেন two objects are considered equal যদি 
তাদের properties same হয়।