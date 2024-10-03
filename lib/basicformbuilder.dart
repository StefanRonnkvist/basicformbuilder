import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'formbuilderfields.dart';
import 'listandmap.dart';

class CompleteForm extends StatefulWidget {
  const CompleteForm({super.key});

  @override
  State<CompleteForm> createState() {
    return _CompleteFormState();
  }
}

void _onChanged(dynamic val) => debugPrint(val.toString());

class _CompleteFormState extends State<CompleteForm> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          FormBuilder(
            skipDisabled: false,
            key: _formKey,
            onChanged: () {
              _formKey.currentState!.save();
              debugPrint(_formKey.currentState!.value.toString());
            },
            child: Column(
              children: <Widget>[
                const SizedBox(height: 8),
                createFormBuilderSlider("sliderName", "sliderLabel", 0.0, 10.0,
                    5.1, _onChanged),
                const SizedBox(height: 8),
                createFormBuilderRangeSlider(
                    "sliderRangeName",
                    "rangeSliderLabel",
                    0.0,
                    100.0,
                    23.7,
                    67.9,
                    _onChanged,
                    _formKey),
                const SizedBox(height: 8),
                createFormBuilderDateTimePicker("dateTimePickerName",
                    "dateTimePickerLabelText", _onChanged, _formKey),
                const SizedBox(height: 8),
                createFormBuilderDateRangePicker(
                    "dateTimeRangePickerName",
                    1970,
                    2030,
                    "dateTimeRangePickerLabelText",
                    _onChanged,
                    _formKey),
                const SizedBox(height: 8),
                createFormBuilderCheckBox(
                    "checkBoxName", "checkBoxText", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderSwitch("switchName", "switchLabelText", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderTextField("textFieldName",
                    "textFieldLabelText", _formKey, setState),
                const SizedBox(height: 8),
                createFormBuilderFilterChipMap(
                    mapOptions,
                    "filterChipLabelTextMap",
                    "filterChipNameMap",
                    _onChanged),
                const SizedBox(height: 8),
                createFormBuilderFilterChip("filterChipLabelText",
                    "filterChipName", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderChoiceChipMap(mapOptions, "choiceChipNameMap",
                    "choiceChipLabelTextMap", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderChoiceChip("choiceChipName",
                    "choiceChipLabelText", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderCheckboxGroupList(
                    listOptions,
                    "checkBoxGroupLabelTextList",
                    "checkBoxGroupNameList",
                    _onChanged),
                const SizedBox(height: 8),
                createFormBuilderCheckboxGroup("checkBoxGroupLabelText",
                    "checkBoxGroupName", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderRadioGroupList(
                    listOptions,
                    "radioGroupNameList",
                    "radioGroupLabelTextList",
                    _onChanged),
                const SizedBox(height: 8),
                createFormBuilderRadioGroup("radioGroupName",
                    "radioGroupLabelText", _onChanged),
                const SizedBox(height: 8),
                createFormBuilderDropdownList(
                    listOptions,
                    "dropDownLabelTextList",
                    "dropDownNameList",
                    _onChanged),
                const SizedBox(height: 8),
                createFormBuilderDropdown(
                    "dropDownLabelText", "dropDownName", _onChanged),
                const SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.saveAndValidate() ??
                                false) {
                              debugPrint(
                                  _formKey.currentState?.value.toString());
                            } else {
                              debugPrint(
                                  _formKey.currentState?.value.toString());
                              debugPrint('validation failed');
                            }
                          },
                          child: const Text('Submit')),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          _formKey.currentState?.reset();
                        },
                        child: const Text('Reset'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
