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

class _CompleteFormState extends State<CompleteForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          FormBuilder(
            skipDisabled: false,
            key: formKey,
            /*
            onChanged: () {
              _formKey.currentState!.save();
              debugPrint(_formKey.currentState!.value.toString());
            },
             */
            child: Column(
              children: <Widget>[
                const SizedBox(height: 8),
                createFormBuilderSlider(
                    "sliderName", "sliderLabel", 0.0, 10.0, 5.1),
                const SizedBox(height: 8),
                createFormBuilderRangeSlider("sliderRangeName",
                    "rangeSliderLabel", 0.0, 100.0, 23.7, 67.9, formKey),
                const SizedBox(height: 8),
                createFormBuilderDateTimePicker(
                    "dateTimePickerName", "dateTimePickerLabelText", formKey),
                const SizedBox(height: 8),
                createFormBuilderDateRangePicker("dateTimeRangePickerName",
                    1970, 2030, "dateTimeRangePickerLabelText", formKey),
                const SizedBox(height: 8),
                createFormBuilderCheckBox("checkBoxName", "checkBoxText"),
                const SizedBox(height: 8),
                createFormBuilderSwitch("switchName", "switchLabelText"),
                const SizedBox(height: 8),
                createFormBuilderTextField(
                    "textFieldName", "textFieldLabelText", formKey, setState),
                const SizedBox(height: 8),
                createFormBuilderFilterChipMap(
                    mapOptions, "filterChipLabelTextMap", "filterChipNameMap"),
                const SizedBox(height: 8),
                createFormBuilderFilterChip(
                    "filterChipLabelText", "filterChipName"),
                const SizedBox(height: 8),
                createFormBuilderChoiceChipMap(
                    mapOptions, "choiceChipNameMap", "choiceChipLabelTextMap"),
                const SizedBox(height: 8),
                createFormBuilderChoiceChip(
                    "choiceChipName", "choiceChipLabelText"),
                const SizedBox(height: 8),
                createFormBuilderCheckboxGroupList(listOptions,
                    "checkBoxGroupLabelTextList", "checkBoxGroupNameList"),
                const SizedBox(height: 8),
                createFormBuilderCheckboxGroup(
                    "checkBoxGroupLabelText", "checkBoxGroupName"),
                const SizedBox(height: 8),
                createFormBuilderRadioGroupList(listOptions,
                    "radioGroupNameList", "radioGroupLabelTextList"),
                const SizedBox(height: 8),
                createFormBuilderRadioGroup(
                    "radioGroupName", "radioGroupLabelText"),
                const SizedBox(height: 8),
                createFormBuilderDropdownList(
                    listOptions, "dropDownLabelTextList", "dropDownNameList"),
                const SizedBox(height: 8),
                createFormBuilderDropdown("dropDownLabelText", "dropDownName"),
                const SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState?.saveAndValidate() ??
                                false) {
                              debugPrint(
                                  formKey.currentState?.value.toString());
                            } else {
                              debugPrint(
                                  formKey.currentState?.value.toString());
                              debugPrint('validation failed');
                            }
                          },
                          child: const Text('Submit')),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          formKey.currentState?.reset();
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
