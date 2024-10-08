# Basic Form Builder

A Flutter FormBuilder project.

### The following FormBuilder Fields:  
* FormBuilderDateRangePicker  
'''
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
'''
* FormBuilderDateTimePicker  
* FormBuilderSlider  
* FormBuilderRangeSlider  
* FormBuilderCheckbox  
* FormBuilderTextField  
* FormBuilderSwitch
#### The following input fields utilize Discrete, Map and List variables:  
* FormBuilderChoiceChip  
* FormBuilderFilterChip  
* FormBuilderCheckboxGroup  
* FormBuilderRadioGroup  
* FormBuilderDropdown  