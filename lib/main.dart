// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:college_management_app/app/app.dart';
import 'package:college_management_app/bootstrap.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(
    (dioInstance) {
      return const App();
    },
  );
}
