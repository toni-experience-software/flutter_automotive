import 'package:code_builder/code_builder.dart';
import 'package:generator/input/vehicle_property.dart';
import 'package:generator/parsers/vehicle_type_doc_parser.dart';

class VehicleModleBuilder {
  VehicleModleBuilder(this.parser);

  final VehicleTypeDocParser parser;

  Library buildLibrary() {
    return Library(
      (l) => l
        ..body.addAll([
          _buildAccessEnum(),
          _buildMainEnum(),
        ])
        ..docs.addAll([
"""
// ignore_for_file: doc_directive_unknown, slash_for_doc_comments, constant_identifier_names

// This model file is generated from the VehiclePropertyIds Java Class into a Dart Enum.
// https://android.googlesource.com/platform/packages/services/Car/+/master/car-lib/src/android/car/VehiclePropertyIds.java

/*
 * Copyright (C) 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
"""
        ]),
    );
  }

  Enum _buildAccessEnum() {
    return Enum(
      (e) => e
        ..name = "VehiclePropertyAccess"
        ..values.addAll([
            EnumValue((v) => v..name = "unavailable"),
            EnumValue((v) => v..name = "normal"),
            EnumValue((v) => v..name = "privileged"),
          ],
        )
    );
  }

  Enum _buildMainEnum() {
    return Enum(
      (e) => e
        ..name = "VehicleProperty"
        ..values.addAll([
          for (final prop in VehiclePropertyInput.values) ...[
            EnumValue(
              (v) => v
                ..name = prop.name
                ..docs.addAll([
                  if (parser.getDocs(prop)case final docs?) docs,
                ])
                ..arguments.addAll([
                  literalNum(prop.id),
                  if (parser.getProps(prop) case final props!) ...[
                    switch (props) {
                      VehicleTypeProperties(read: true, readPrivileged: false) => refer("VehiclePropertyAccess.normal"),
                      VehicleTypeProperties(read: true, readPrivileged: true) => refer("VehiclePropertyAccess.privileged"),
                      _ => refer("VehiclePropertyAccess.unavailable"),
                    },
                    switch (props) {
                      VehicleTypeProperties(write: true, writePrivileged: false) => refer("VehiclePropertyAccess.normal"),
                      VehicleTypeProperties(write: true, writePrivileged: true) => refer("VehiclePropertyAccess.privileged"),
                      _ => refer("VehiclePropertyAccess.unavailable"),
                    },
                  ],
                ]),
            ),
          ],
        ])
        ..constructors.addAll([
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.addAll([
                Parameter(
                  (p) => p
                    ..name = "id"
                    ..toThis = true,
                ),
                Parameter(
                  (p) => p
                    ..name = "read"
                    ..toThis = true,
                ),
                Parameter(
                  (p) => p
                    ..name = "write"
                    ..toThis = true,
                ),
              ]),
          ),
        ])
        ..fields.addAll([
          Field(
            (f) => f
              ..name = "id"
              ..type = refer("int")
              ..modifier = FieldModifier.final$,
          ),
          Field(
            (f) => f
              ..name = "read"
              ..type = refer("VehiclePropertyAccess")
              ..modifier = FieldModifier.final$,
          ),
          Field(
            (f) => f
              ..name = "write"
              ..type = refer("VehiclePropertyAccess")
              ..modifier = FieldModifier.final$,
          ),
        ])
    );
  }
}
