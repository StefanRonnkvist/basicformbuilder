import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
//import 'package:form_builder_validators/form_builder_validators.dart';

FormBuilderDateRangePicker createFormBuilderDateRangePicker(
    String dateTimeRangePickerName,
    int dateTimeFirst,
    int dateTimeLast,
    String dateTimeRangePickerLabelText,
    onChanged,
    _formKey) {
  return FormBuilderDateRangePicker(
    name: dateTimeRangePickerName,
    firstDate: DateTime(dateTimeFirst),
    lastDate: DateTime(dateTimeLast),
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: dateTimeRangePickerLabelText,
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          _formKey.currentState!.fields[dateTimeRangePickerName]
              ?.didChange(null);
        },
      ),
    ),
  );
}

FormBuilderDateTimePicker createFormBuilderDateTimePicker(
    String dateTimePickerName,
    String dateTimePickerLabelText,
    onChanged,
    _formKey) {
  return FormBuilderDateTimePicker(
    name: dateTimePickerName,
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: dateTimePickerLabelText,
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          _formKey.currentState!.fields[dateTimePickerName]?.didChange(null);
        },
      ),
    ),
  );
}

FormBuilderSlider createFormBuilderSlider(
    String sliderName,
    String sliderLabelText,
    double sliderMin,
    double sliderMax,
    double sliderInitial,
    onChanged) {
  return FormBuilderSlider(
    name: sliderName,
    min: sliderMin,
    max: sliderMax,
    initialValue: sliderInitial,
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: sliderLabelText,
    ),
  );
}

FormBuilderRangeSlider createFormBuilderRangeSlider(
    String sliderName,
    String sliderLabelText,
    double sliderMin,
    double sliderMax,
    double sliderInitialMin,
    double sliderInitialMax,
    onChanged,
    _formKey) {
  return FormBuilderRangeSlider(
    name: sliderName,
    min: sliderMin,
    max: sliderMax,
    initialValue: RangeValues(sliderInitialMin, sliderInitialMax),
    onChanged: onChanged,
    maxValueWidget: (max) => TextButton(
      onPressed: () {
        _formKey.currentState?.patchValue(
          {sliderName: const RangeValues(4, 100)},
        );
      },
      child: Text(max),
    ),
    decoration: InputDecoration(labelText: sliderLabelText),
  );
}

FormBuilderCheckbox createFormBuilderCheckBox(
    String checkBoxName, String checkBoxText, onChanged) {
  return FormBuilderCheckbox(
    name: checkBoxName,
    onChanged: onChanged,
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: checkBoxText,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

FormBuilderTextField createFormBuilderTextField(String textFieldName,
    String textFieldLabelText, _formKey, _setState) {
  return FormBuilderTextField(
    name: textFieldName,
    decoration: InputDecoration(
      labelText: textFieldLabelText,
      suffixIcon: const Icon(Icons.check, color: Colors.green),
    ),
    onChanged: (val) {
      _setState(() {
        _formKey.currentState!.fields[textFieldName]?.didChange(null);
      });
    },
  );
}

FormBuilderSwitch createFormBuilderSwitch(
    String switchName, String switchTitle, onChanged) {
  return FormBuilderSwitch(
    title: Text(switchTitle),
    name: switchName,
    onChanged: onChanged,
  );
}

FormBuilderChoiceChip createFormBuilderChoiceChipMap(
    Map<String, String> mapOptions,
    String choiceChipNameMap,
    String choiceChipLabelTextMap,
    onChanged) {
  return FormBuilderChoiceChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: '$choiceChipLabelTextMap:'),
    name: choiceChipNameMap,
    onChanged: onChanged,
    options: mapOptions.entries
        .map((entry) => FormBuilderChipOption(
              value: entry.key,
              avatar: CircleAvatar(child: Text(entry.value)),
            ))
        .toList(growable: false),
  );
}

FormBuilderChoiceChip createFormBuilderChoiceChip(String choiceChipName,
    String choiceChipLabelText, onChanged) {
  return FormBuilderChoiceChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: choiceChipLabelText),
    name: choiceChipName,
    onChanged: onChanged,
    options: const [
      FormBuilderChipOption(
        value: 'Item 5',
        avatar: CircleAvatar(child: Text('5')),
      ),
      FormBuilderChipOption(
        value: 'Item 6',
        avatar: CircleAvatar(child: Text('6')),
      ),
      FormBuilderChipOption(
        value: 'Item 7',
        avatar: CircleAvatar(child: Text('7')),
      ),
      FormBuilderChipOption(
        value: 'Item 8',
        avatar: CircleAvatar(child: Text('8')),
      ),
    ],
  );
}

FormBuilderFilterChip createFormBuilderFilterChipMap(
    Map<String, String> mapOptions,
    String filterChipLabelTextMap,
    String filterChipNameMap,
    onChanged) {
  return FormBuilderFilterChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: filterChipLabelTextMap),
    name: filterChipNameMap,
    selectedColor: Colors.red,
    onChanged: onChanged,
    options: mapOptions.entries
        .map((entry) => FormBuilderChipOption(
              value: entry.key,
              avatar: CircleAvatar(child: Text(entry.value)),
            ))
        .toList(growable: false),
  );
}

FormBuilderFilterChip createFormBuilderFilterChip(String filterChipLabelText,
    String filterChipName, onChanged) {
  return FormBuilderFilterChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: filterChipLabelText),
    name: filterChipName,
    selectedColor: Colors.red,
    onChanged: onChanged,
    options: const [
      FormBuilderChipOption(
        value: 'Item 5',
        avatar: CircleAvatar(child: Text('5')),
      ),
      FormBuilderChipOption(
        value: 'Item 6',
        avatar: CircleAvatar(child: Text('6')),
      ),
      FormBuilderChipOption(
        value: 'Item 7',
        avatar: CircleAvatar(child: Text('7')),
      ),
      FormBuilderChipOption(
        value: 'Item 8',
        avatar: CircleAvatar(child: Text('8')),
      ),
    ],
  );
}

FormBuilderCheckboxGroup createFormBuilderCheckboxGroupList(
    List<String> listOptions,
    String checkBoxGroupLabelTextList,
    String checkBoxGroupNameList,
    onChanged) {
  return FormBuilderCheckboxGroup<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: checkBoxGroupLabelTextList),
    name: checkBoxGroupNameList,
    onChanged: onChanged,
    options: listOptions
        .map((lo) => FormBuilderFieldOption(
              value: lo,
              child: Text(lo),
            ))
        .toList(growable: false),
    separator: const VerticalDivider(
      width: 10,
      thickness: 5,
      color: Colors.red,
    ),
  );
}

FormBuilderCheckboxGroup createFormBuilderCheckboxGroup(
    String checkBoxGroupLabelText,
    String checkBoxGroupName,
    onChanged) {
  return FormBuilderCheckboxGroup<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: checkBoxGroupLabelText),
    name: checkBoxGroupName,
    onChanged: onChanged,
    options: const [
      FormBuilderFieldOption(value: 'Item 5'),
      FormBuilderFieldOption(value: 'Item 6'),
      FormBuilderFieldOption(value: 'Item 7'),
      FormBuilderFieldOption(value: 'Item 8'),
    ],
    separator: const VerticalDivider(
      width: 10,
      thickness: 5,
      color: Colors.red,
    ),
  );
}

FormBuilderRadioGroup createFormBuilderRadioGroupList(
    List<String> listOptions,
    String radioGroupNameList,
    String radioGroupLabelTextList,
    onChanged) {
  return FormBuilderRadioGroup<String>(
    decoration: InputDecoration(
      labelText: radioGroupLabelTextList,
    ),
    name: radioGroupNameList,
    onChanged: onChanged,
    options: listOptions
        .map((lo) => FormBuilderFieldOption(
              value: lo,
              child: Text(lo),
            ))
        .toList(growable: false),
  );
}

FormBuilderRadioGroup createFormBuilderRadioGroup(
    String radioGroupName, String radioGroupLabelText, onChanged) {
  return FormBuilderRadioGroup<String>(
    decoration: InputDecoration(
      labelText: radioGroupLabelText,
    ),
    name: radioGroupName,
    onChanged: onChanged,
    options: const [
      FormBuilderFieldOption(value: 'Item 5'),
      FormBuilderFieldOption(value: 'Item 6'),
      FormBuilderFieldOption(value: 'Item 7'),
      FormBuilderFieldOption(value: 'Item 8'),
    ],
  );
}

FormBuilderDropdown createFormBuilderDropdownList(
    List<String> listOptions,
    String dropDownLabelTextList,
    String dropDownNameList,
    onChanged) {
  return FormBuilderDropdown<String>(
    name: dropDownNameList,
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: dropDownLabelTextList,
      hintText: 'Select Dropdown',
    ),
    /**/
    items: listOptions
        .map((lo) => DropdownMenuItem(
              alignment: AlignmentDirectional.center,
              value: lo,
              child: Text(lo),
            ))
        .toList(),
  );
}

FormBuilderDropdown createFormBuilderDropdown(
    String dropDownLabelText, String dropDownName, onChanged) {
  return FormBuilderDropdown<String>(
    name: dropDownName,
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: dropDownLabelText,
      hintText: 'Select Dropdown',
    ),
    items: const [
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'Item5',
        child: Text('Item 5'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'Item6',
        child: Text('Item 6'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'Item7',
        child: Text('Item 7'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'Item8',
        child: Text('Item 8'),
      ),
    ],
  );
}
/*
Bool validators
Collection validators
Core validators
Datetime validators
File validators
Finance validators
Identity validators
Network validators
Numeric validators
String validators
Use-case validators
Extension method validators
 */