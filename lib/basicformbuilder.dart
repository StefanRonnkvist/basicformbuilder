import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class CompleteForm extends StatefulWidget {
  const CompleteForm({super.key});

  @override
  State<CompleteForm> createState() {
    return _CompleteFormState();
  }
}

class _CompleteFormState extends State<CompleteForm> {
  List<String> listOptions = [
    'list 1',
    'list 2',
    'list 3',
    'list 4',
  ];

  Map<String, String> mapOptions = {
    'Map 1': '1',
    'Map 2': '2',
    'Map 3': '3',
    'Map 4': '4',
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          FormBuilder(
            skipDisabled: false,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 8),
                createFormBuilderSlider(),
                const SizedBox(height: 8),
                createFormBuilderRangeSlider(),
                const SizedBox(height: 8),
                createFormBuilderDateTimePicker(),
                const SizedBox(height: 8),
                createFormBuilderDateRangePicker(),
                const SizedBox(height: 8),
                createFormBuilderCheckBox(),
                const SizedBox(height: 8),
                createFormBuilderSwitch(),
                const SizedBox(height: 8),
                createFormBuilderTextField(),
                const SizedBox(height: 8),
                createFormBuilderFilterChipMap(mapOptions),
                const SizedBox(height: 8),
                createFormBuilderFilterChip(),
                const SizedBox(height: 8),
                createFormBuilderChoiceChipMap(mapOptions),
                const SizedBox(height: 8),
                createFormBuilderChoiceChip(),
                const SizedBox(height: 8),
                createFormBuilderCheckboxGroupList(listOptions),
                const SizedBox(height: 8),
                createFormBuilderCheckboxGroup(),
                const SizedBox(height: 8),
                createFormBuilderRadioGroupList(listOptions),
                const SizedBox(height: 8),
                createFormBuilderRadioGroup(),
                const SizedBox(height: 8),
                createFormBuilderDropdownList(listOptions),
                const SizedBox(height: 8),
                createFormBuilderDropdown(),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

FormBuilderDateRangePicker createFormBuilderDateRangePicker() {
  return FormBuilderDateRangePicker(
    name: 'date_range',
    firstDate: DateTime(1970),
    lastDate: DateTime(2030),
    format: DateFormat('yyyy-MM-dd'),
    decoration: InputDecoration(
      labelText: 'Date Range',
      helperText: 'Helper text',
      hintText: 'Hint text',
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {},
      ),
    ),
  );
}

FormBuilderDateTimePicker createFormBuilderDateTimePicker() {
  return FormBuilderDateTimePicker(
    name: 'date',
    initialEntryMode: DatePickerEntryMode.calendar,
    inputType: InputType.both,
    decoration: InputDecoration(
      labelText: 'DateTimePicker',
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {},
      ),
    ),
  );
}

FormBuilderSlider createFormBuilderSlider() {
  return FormBuilderSlider(
    name: 'slider',
    min: 0.0,
    max: 10.0,
    initialValue: 0.0,
    divisions: 20,
    activeColor: Colors.red,
    inactiveColor: Colors.pink[100],
    decoration: const InputDecoration(
      labelText: 'Slider',
    ),
  );
}

FormBuilderRangeSlider createFormBuilderRangeSlider() {
  return FormBuilderRangeSlider(
    name: 'range_slider',
    min: 0.0,
    max: 100.0,
    divisions: 20,
    maxValueWidget: (max) => TextButton(
      onPressed: () {},
      child: Text(max),
    ),
    activeColor: Colors.red,
    inactiveColor: Colors.pink[100],
    decoration: const InputDecoration(labelText: 'RangeSlider'),
  );
}

FormBuilderCheckbox createFormBuilderCheckBox() {
  return FormBuilderCheckbox(
    name: 'CheckBox',
    title: RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'CheckBox',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

FormBuilderTextField createFormBuilderTextField() {
  return FormBuilderTextField(
    autovalidateMode: AutovalidateMode.always,
    name: 'text_field',
    decoration: const InputDecoration(
      labelText: 'TextField',
    ),
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.next,
  );
}

FormBuilderSwitch createFormBuilderSwitch() {
  return FormBuilderSwitch(
    title: const Text('Switch'),
    name: 'switch',
  );
}

FormBuilderChoiceChip createFormBuilderChoiceChipMap(
    Map<String, String> mapOptions) {
  return FormBuilderChoiceChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: const InputDecoration(labelText: 'ChoiceChip Map:'),
    name: 'choice_chip_map',
    options: mapOptions.entries
        .map((entry) => FormBuilderChipOption(
              value: entry.key,
              avatar: CircleAvatar(child: Text(entry.value)),
            ))
        .toList(growable: false),
  );
}

FormBuilderChoiceChip createFormBuilderChoiceChip() {
  return FormBuilderChoiceChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: const InputDecoration(labelText: 'ChoiceChip:'),
    name: 'choice_chip',
    options: const [
      FormBuilderChipOption(
        value: 'Map 5',
        avatar: CircleAvatar(child: Text('5')),
      ),
      FormBuilderChipOption(
        value: 'Map 6',
        avatar: CircleAvatar(child: Text('6')),
      ),
      FormBuilderChipOption(
        value: 'Map 7',
        avatar: CircleAvatar(child: Text('7')),
      ),
      FormBuilderChipOption(
        value: 'Map 8',
        avatar: CircleAvatar(child: Text('8')),
      ),
    ],
  );
}

FormBuilderFilterChip createFormBuilderFilterChipMap(
    Map<String, String> mapOptions) {
  return FormBuilderFilterChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: const InputDecoration(labelText: 'FilterChip Map'),
    name: 'filter_chip_map',
    selectedColor: Colors.red,
    options: mapOptions.entries
        .map((entry) => FormBuilderChipOption(
              value: entry.key,
              avatar: CircleAvatar(child: Text(entry.value)),
            ))
        .toList(growable: false),
  );
}

FormBuilderFilterChip createFormBuilderFilterChip() {
  return FormBuilderFilterChip<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: const InputDecoration(labelText: 'FilterChip'),
    name: 'filter_chip',
    selectedColor: Colors.red,
    options: const [
      FormBuilderChipOption(
        value: 'Map 5',
        avatar: CircleAvatar(child: Text('5')),
      ),
      FormBuilderChipOption(
        value: 'Map 6',
        avatar: CircleAvatar(child: Text('6')),
      ),
      FormBuilderChipOption(
        value: 'Map 7',
        avatar: CircleAvatar(child: Text('7')),
      ),
      FormBuilderChipOption(
        value: 'Map 8',
        avatar: CircleAvatar(child: Text('8')),
      ),
    ],
  );
}

FormBuilderCheckboxGroup createFormBuilderCheckboxGroupList(
    List<String> listOptions) {
  return FormBuilderCheckboxGroup<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: const InputDecoration(labelText: 'CheckboxGroup List'),
    name: 'checkbox_group_list',
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

FormBuilderCheckboxGroup createFormBuilderCheckboxGroup() {
  return FormBuilderCheckboxGroup<String>(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: const InputDecoration(labelText: 'CheckboxGroup'),
    name: 'checkbox_group',
    options: const [
      FormBuilderFieldOption(value: 'List 5'),
      FormBuilderFieldOption(value: 'List 6'),
      FormBuilderFieldOption(value: 'List 7'),
      FormBuilderFieldOption(value: 'List 8'),
    ],
    separator: const VerticalDivider(
      width: 10,
      thickness: 5,
      color: Colors.red,
    ),
  );
}

FormBuilderRadioGroup createFormBuilderRadioGroupList(
    List<String> listOptions) {
  return FormBuilderRadioGroup<String>(
    decoration: const InputDecoration(
      labelText: 'RadioGroup List',
    ),
    name: 'radio_group_list',
    options: listOptions
        .map((lo) => FormBuilderFieldOption(
              value: lo,
              child: Text(lo),
            ))
        .toList(growable: false),
    controlAffinity: ControlAffinity.leading,
  );
}

FormBuilderRadioGroup createFormBuilderRadioGroup() {
  return FormBuilderRadioGroup<String>(
    decoration: const InputDecoration(
      labelText: 'RadioGroup',
    ),
    name: 'radio_group',
    options: const [
      FormBuilderFieldOption(value: 'List 5'),
      FormBuilderFieldOption(value: 'List 6'),
      FormBuilderFieldOption(value: 'List 7'),
      FormBuilderFieldOption(value: 'List 8'),
    ],
    controlAffinity: ControlAffinity.leading,
  );
}

FormBuilderDropdown createFormBuilderDropdownList(List<String> listOptions) {
  return FormBuilderDropdown<String>(
    name: 'dropdown_list',
    decoration: const InputDecoration(
      labelText: 'Dropdown List',
      hintText: 'Select Dropdown',
    ),
    items: listOptions
        .map((lo) => DropdownMenuItem(
              alignment: AlignmentDirectional.center,
              value: lo,
              child: Text(lo),
            ))
        .toList(),
    //valueTransformer: (val) => val?.toString(),
  );
}

FormBuilderDropdown createFormBuilderDropdown() {
  return FormBuilderDropdown<String>(
    name: 'dropdown',
    decoration: const InputDecoration(
      labelText: 'Dropdown',
      hintText: 'Select Dropdown',
    ),
    items: const [
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'list5',
        child: Text('List 5'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'list6',
        child: Text('List 6'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'list7',
        child: Text('List 7'),
      ),
      DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'list8',
        child: Text('List 8'),
      ),
    ],
  );
}
