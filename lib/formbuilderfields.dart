import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

FormBuilderDateRangePicker createFormBuilderDateRangePicker(
    String dateTimeRangePickerName,
    int dateTimeFirst,
    int dateTimeLast,
    String dateTimeRangePickerLabelText,
    _formKey) {
  return FormBuilderDateRangePicker(
    name: dateTimeRangePickerName,
    firstDate: DateTime(dateTimeFirst),
    lastDate: DateTime(dateTimeLast),
    validator: null,
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
    _formKey) {
  return FormBuilderDateTimePicker(
    name: dateTimePickerName,
    validator: null,
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
    double sliderInitial) {
  return FormBuilderSlider(
    name: sliderName,
    min: sliderMin,
    max: sliderMax,
    initialValue: sliderInitial,
    validator: null,
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
    _formKey) {
  return FormBuilderRangeSlider(
    name: sliderName,
    min: sliderMin,
    max: sliderMax,
    initialValue: RangeValues(sliderInitialMin, sliderInitialMax),
    validator: null,
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
    String checkBoxName, String checkBoxText) {
  return FormBuilderCheckbox(
    name: checkBoxName,
    validator: null,
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: checkBoxText,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

FormBuilderTextField createFormBuilderTextField(
    String textFieldName, String textFieldLabelText, _formKey, _setState) {
  return FormBuilderTextField(
    name: textFieldName,
    validator: null,
    decoration: InputDecoration(
      labelText: textFieldLabelText,
      suffixIcon: const Icon(Icons.check, color: Colors.green),
    ),
  );
}

FormBuilderSwitch createFormBuilderSwitch(
    String switchName, String switchTitle) {
  return FormBuilderSwitch(
    title: Text(switchTitle),
    name: switchName,
    validator: null,
  );
}

FormBuilderChoiceChip createFormBuilderChoiceChipMap(
    Map<String, String> mapOptions,
    String choiceChipNameMap,
    String choiceChipLabelTextMap) {
  return FormBuilderChoiceChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: '$choiceChipLabelTextMap:'),
    name: choiceChipNameMap,
    validator: null,
    options: mapOptions.entries
        .map((entry) => FormBuilderChipOption(
              value: entry.key,
              avatar: CircleAvatar(child: Text(entry.value)),
            ))
        .toList(growable: false),
  );
}

FormBuilderChoiceChip createFormBuilderChoiceChip(
    String choiceChipName, String choiceChipLabelText) {
  return FormBuilderChoiceChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: choiceChipLabelText),
    name: choiceChipName,
    validator: null,
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
    String filterChipNameMap) {
  return FormBuilderFilterChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: filterChipLabelTextMap),
    name: filterChipNameMap,
    selectedColor: Colors.red,
    validator: null,
    options: mapOptions.entries
        .map((entry) => FormBuilderChipOption(
              value: entry.key,
              avatar: CircleAvatar(child: Text(entry.value)),
            ))
        .toList(growable: false),
  );
}

FormBuilderFilterChip createFormBuilderFilterChip(
    String filterChipLabelText, String filterChipName) {
  return FormBuilderFilterChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: filterChipLabelText),
    name: filterChipName,
    selectedColor: Colors.red,
    validator: null,
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
    String checkBoxGroupNameList) {
  return FormBuilderCheckboxGroup<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: checkBoxGroupLabelTextList),
    name: checkBoxGroupNameList,
    validator: null,
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
    String checkBoxGroupLabelText, String checkBoxGroupName) {
  return FormBuilderCheckboxGroup<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(labelText: checkBoxGroupLabelText),
    name: checkBoxGroupName,
    validator: null,
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

FormBuilderRadioGroup createFormBuilderRadioGroupList(List<String> listOptions,
    String radioGroupNameList, String radioGroupLabelTextList) {
  return FormBuilderRadioGroup<String>(
    validator: null,
    decoration: InputDecoration(
      labelText: radioGroupLabelTextList,
    ),
    name: radioGroupNameList,
    options: listOptions
        .map((lo) => FormBuilderFieldOption(
              value: lo,
              child: Text(lo),
            ))
        .toList(growable: false),
  );
}

FormBuilderRadioGroup createFormBuilderRadioGroup(
    String radioGroupName, String radioGroupLabelText) {
  return FormBuilderRadioGroup<String>(
    decoration: InputDecoration(
      labelText: radioGroupLabelText,
    ),
    name: radioGroupName,
    validator: null,
    options: const [
      FormBuilderFieldOption(value: 'Item 5'),
      FormBuilderFieldOption(value: 'Item 6'),
      FormBuilderFieldOption(value: 'Item 7'),
      FormBuilderFieldOption(value: 'Item 8'),
    ],
  );
}

FormBuilderDropdown createFormBuilderDropdownList(List<String> listOptions,
    String dropDownLabelTextList, String dropDownNameList) {
  return FormBuilderDropdown<String>(
    name: dropDownNameList,
    validator: null,
    decoration: InputDecoration(
      labelText: dropDownLabelTextList,
      hintText: 'Select Dropdown',
    ),
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
    String dropDownLabelText, String dropDownName) {
  return FormBuilderDropdown<String>(
    name: dropDownName,
    validator: null,
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
