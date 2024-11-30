# Basic Form Builder

A Flutter FormBuilder project.

## The following FormBuilder Fields: 

```
final formKey = GlobalKey<FormBuilderState>();
Form Builder Functions list and map example data
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
list<string> list options = ['list 1','list 2','list 3','list 4',];
map<string, string> map options = {'Map 1': '1','Map 2': '2','Map 3': '3','Map 4': '4',};
final form key = global key<form builder state>();
```
### Slider
```
The form builder slider has the following parameters string Name, string Label Text, double Minimum, double Maximum, double Initial value, form key and validator.

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
```
### Range Slider
```
The form builder range slider has the following parameters string Name, double Minimum, double Maximum, double Range Values(Minimum, Maximum), form key, and validator.

FormBuilderDateRangePicker createFormBuilderDateRangePicker(
    String dateTimeRangePickerName,
    int dateTimeFirst,
    int dateTimeLast,
    String dateTimeRangePickerLabelText,
    _formKey) {
    return FormBuilderRangeSlider(
        name: sliderNam
        min: sliderMin,
        max: sliderMax,
        initialValue: RangeValues(sliderInitialMin, sliderInitialMax),
        validator: null,
        maxValueWidget: (max) => TextButton(
            onPressed: () {},
    );
}
```
### Date Time Picker
```
The form builder date time picker has the following parameters string Name, string Label Text, date time(date time first), date time(date time last), form key, and validator.

FormBuilderDateTimePicker createFormBuilderDateTimePicker(
    String dateTimePickerName,
    String dateTimePickerLabelText,
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
            onPressed: () {_formKey.currentState!.fields[dateTimeRangePickerName]?.didChange(null);
            },
            ),
        ),
    );
}
```
### Date Range Picker
```
The form builder date time picker has the following parameters  string name, integer(date time first), integer(date time last), form key, validator.

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
            _formKey.currentState!.fields[dateTimeRangePickerName]?.didChange(null);
        },),
        ),
    );
}
```
### Check Box
```
The form builder check box has the following parameters string name, string title text, and validator. 

FormBuilderSwitch createFormBuilderSwitch(
    String switchName,
    String switchTitle) {
  return FormBuilderCheckbox createFormBuilderCheckBox(
    String checkBoxName,
    String checkBoxText) {
    return FormBuilderCheckbox(
        name: checkBoxName,
        validator: null,
        title: Text(checkBoxText),
    );
}
```
### Switch
```
The form builder has the following parameters string name, string title and validator. 

FormBuilderSwitch createFormBuilderSwitch(
    String switchName,
    String switchTitle) {
  return FormBuilderSwitch createFormBuilderSwitch(
    String switchName,
    String switchTitle) {
    return FormBuilderSwitch(
    title: Text(switchTitle),
    name: switchName,
    validator: null,
    );
}
```
### Text Field
```
The form builder text field has the following parameters string name, string label text, form Key, set state and validator. 

FormBuilderTextField createFormBuilderTextField(
    String textFieldName,
    String textFieldLabelText,
    _formKey,
    _setState) {
    return FormBuilderTextField(
        name: textFieldName,
        validator: null,
        decoration: InputDecoration(
            labelText: textFieldLabelText,
            suffixIcon: const Icon(Icons.check, color: Colors.green),
        ),
    );
}
```
### Filter Chip
```
The form builder filter chip has the following parameters map<string, string> map Options, string filter label text, string name and validator.

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
        options: mapOptions.entries.map((entry) => FormBuilderChipOption(
            value: entry.key,
            avatar: CircleAvatar(child: Text(entry.value)),
        ))
        .toList(growable: false),
    );
}
```
#### Discrete
```
FormBuilderFilterChip createFormBuilderFilterChip(
    String filterChipLabelText,
    String filterChipName) {
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
```
### Choice Chip
```
The form builder choice chip has the following parameters map<string, string> map options, string label text, string name and validator.

FormBuilderChoiceChip createFormBuilderChoiceChipMap(
    Map<String,
    String> mapOptions,
    String choiceChipNameMap,
    String choiceChipLabelTextMap) {
    return FormBuilderChoiceChip<String>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(labelText: '$choiceChipLabelTextMap:'),
        name: choiceChipNameMap,
        validator: null,
        options: mapOptions.entries.map((entry) => FormBuilderChipOption(
            value: entry.key,
            avatar: CircleAvatar(child: Text(entry.value)),
        ))
        .toList(growable: false),
    );
}
```
#### Discrete
```
FormBuilderChoiceChip createFormBuilderChoiceChip(
    String choiceChipName,
    String choiceChipLabelText) {
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
```
### Check Box Group
```
The form builder check box group has the following parameters list<string> list options, string label text, string name and validator. 

FormBuilderCheckboxGroup createFormBuilderCheckboxGroupList(
    List<String> listOptions,
    String checkBoxGroupLabelTextList,
    String checkBoxGroupNameList) {
    return FormBuilderCheckboxGroup<String>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(labelText: checkBoxGroupLabelTextList),
        name: checkBoxGroupNameList,
        validator: null,
        options: listOptions.map((lo) => FormBuilderFieldOption(
            value: lo, child: Text(lo),
            )).toList(growable: false),
            separator: const VerticalDivider(
                width: 10,
                thickness: 5,
                color: Colors.red,
        ),
    );
}
```
### Radio Group
```
The form builder radio group has the following parameters list<string> list options, string name, string label text and validator.

FormBuilderRadioGroup createFormBuilderRadioGroupList(List<String> listOptions,
    String radioGroupNameList,
    String radioGroupLabelTextList) {
    return FormBuilderRadioGroup<String>(
        validator: null,
        decoration: InputDecoration(
            labelText: radioGroupLabelTextList,
        ),
        name: radioGroupNameList,
        options: listOptions.map((lo) => FormBuilderFieldOption(
        value: lo,
        child: Text(lo),
        )
        ).toList(growable: false),
    );
}
```
#### Discrete
```
FormBuilderCheckboxGroup createFormBuilderCheckboxGroup(
    String checkBoxGroupLabelText,
    String checkBoxGroupName) {
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
```
### Drop Down
```
The form builder drop down has the following parameters list<string> list options, string label text, string name and validator. 

FormBuilderDropdown createFormBuilderDropdownList(List<String> listOptions,
    String dropDownLabelTextList,
    String dropDownNameList) {
    return FormBuilderDropdown<String>(
    name: dropDownNameList,
    validator: null,
    decoration: InputDecoration(
        labelText: dropDownLabelTextList,
        hintText: 'Select Dropdown',
    ),
    items: listOptions.map((lo) => DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: lo,
        child: Text(lo),
    )
    ).toList(),
    );
}
```
#### Discrete
```
FormBuilderDropdown createFormBuilderDropdown(
    String dropDownLabelText,
    String dropDownName) {
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
```