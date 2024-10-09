# Basic Form Builder

A Flutter FormBuilder project.

### The following FormBuilder Fields: 
```
final formKey = GlobalKey<FormBuilderState>();
    
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

```
* FormBuilderDateRangePicker  
```
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

```
* FormBuilderDateTimePicker  
```
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

```
* FormBuilderSlider  
```
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
* FormBuilderRangeSlider  
```
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

```
* FormBuilderCheckbox  
```
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

```
* FormBuilderTextField  
```
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

```
* FormBuilderSwitch
```
FormBuilderSwitch createFormBuilderSwitch(
    String switchName, String switchTitle) {
  return FormBuilderSwitch(
    title: Text(switchTitle),
    name: switchName,
    validator: null,
  );
}

```
#### The following input fields utilize Discrete, Map and List variables:  
* FormBuilderChoiceChip  
```
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

```
* FormBuilderFilterChip  
```
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

```
* FormBuilderCheckboxGroup  
```
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

```
* FormBuilderRadioGroup  
```
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

```
* FormBuilderDropdown  
```
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

```
### Validators  
#### Bool  
* FormBuilderValidators.hasLowercaseChars() - requires the field's to contain a specified number of lowercase characters.  
* FormBuilderValidators.hasNumericChars() - requires the field's to contain a specified number of numeric characters.  
* FormBuilderValidators.hasSpecialChars() - requires the field's to contain a specified number of special characters.  
* FormBuilderValidators.hasUppercaseChars() - requires the field's to contain a specified number of uppercase characters.  
* FormBuilderValidators.isFalse() - requires the field's to be false.  
* FormBuilderValidators.isTrue() - requires the field's to be true.

#### Collection  
* FormBuilderValidators.containsElement() - requires the field's to be in the provided list.  
* FormBuilderValidators.equalLength() - requires the length of the field's value to be equal to the provided minimum length.  
* FormBuilderValidators.maxLength() - requires the length of the field's value to be less than or equal to the provided maximum size.  
* FormBuilderValidators.minLength() - requires the length of the field's value to be greater than or equal to the provided minimum length.  
* FormBuilderValidators.range() - requires the field's to be within a range.  
* FormBuilderValidators.unique() - requires the field's to be unique in the provided list.

#### Core  
* FormBuilderValidators.aggregate() - runs the validators in parallel, collecting all errors.  
* FormBuilderValidators.compose() - runs each validator against the value provided.  
* FormBuilderValidators.conditional() - conditionally runs a validator against the value provided.  
* FormBuilderValidators.defaultValue() - runs the validator using the default value when the provided value is null.  
* FormBuilderValidators.equal() - requires the field's value to be equal to the provided object.  
* FormBuilderValidators.log() - runs the validator and logs the value at a specific point in the validation chain.  
* FormBuilderValidators.notEqual() - requires the field's value to be not equal to the provided object.  
* FormBuilderValidators.or() - runs each validator against the value provided and passes when any works.  
* FormBuilderValidators.required() - requires the field to have a non-empty value.  
* FormBuilderValidators.skipWhen() - runs the validator and skips the validation when a certain condition is met.  
* FormBuilderValidators.transform() - transforms the value before running the validator.

#### Datetime  
* FormBuilderValidators.dateFuture() - requires the field's value to be in the future.  
* FormBuilderValidators.datePast() - requires the field's value to be a in the past.  
* FormBuilderValidators.dateRange() - requires the field's value to be a within a date range.  
* FormBuilderValidators.dateTime() - requires the field's value to be a valid date time.  
* FormBuilderValidators.date() - requires the field's value to be a valid date string.  
* FormBuilderValidators.time() - requires the field's value to be a valid time string.  
* FormBuilderValidators.timeZone() - requires the field's value to be a valid time zone.

#### File  
* FormBuilderValidators.fileExtension() - requires the field's value to a valid file extension.  
* FormBuilderValidators.fileName() - requires the field's to be a valid file name.  
* FormBuilderValidators.fileSize() - requires the field's to be less than the max size.  
* FormBuilderValidators.mimeType() - requires the field's value to a valid MIME type.  
* FormBuilderValidators.path() - requires the field's to be a valid file or folder path.

#### Finance  
* FormBuilderValidators.bic() - requires the field's to be a valid BIC.  
* FormBuilderValidators.creditCardCVC() - requires the field's value to be a valid credit card CVC number.  
* FormBuilderValidators.creditCardExpirationDate() - requires the field's value to be a valid credit card expiration date and can check if not expired yet.  
* FormBuilderValidators.creditCard() - requires the field's value to be a valid credit card number.  
* FormBuilderValidators.iban() - requires the field's to be a valid IBAN.

#### Identity  
* FormBuilderValidators.city() - requires the field's value to be a valid city name.  
* FormBuilderValidators.country() - requires the field's value to be a valid country name.  
* FormBuilderValidators.firstName() - requires the field's value to be a valid first name.  
* FormBuilderValidators.lastName() - requires the field's value to be a valid last name.  
* FormBuilderValidators.passportNumber() - requires the field's value to be a valid passport number.  
* FormBuilderValidators.password() - requires the field's to be a valid password that matched required conditions.  
* FormBuilderValidators.ssn() - requires the field's to be a valid SSN (Social Security Number).  
* FormBuilderValidators.state() - requires the field's value to be a valid state name.  
* FormBuilderValidators.street() - requires the field's value to be a valid street name.  
* FormBuilderValidators.username() - requires the field's to be a valid username that matched required conditions.  
* FormBuilderValidators.zipCode() - requires the field's to be a valid zip code.

#### Network  
* FormBuilderValidators.email() - requires the field's value to be a valid email address.  
* FormBuilderValidators.ip() - requires the field's value to be a valid IP address.  
* FormBuilderValidators.latitude() - requires the field's to be a valid latitude.  
* FormBuilderValidators.longitude() - requires the field's to be a valid longitude.  
* FormBuilderValidators.macAddress() - requires the field's to be a valid MAC address.  
* FormBuilderValidators.phoneNumber() - requires the field's value to be a valid phone number.  
* FormBuilderValidators.portNumber() - requires the field's to be a valid port number.  
* FormBuilderValidators.url() - requires the field's value to be a valid URL.

#### Numeric  
* FormBuilderValidators.between() - requires the field's to be between two numbers.  
* FormBuilderValidators.evenNumber() - requires the field's to be an even number.  
* FormBuilderValidators.integer() - requires the field's value to be an integer.  
* FormBuilderValidators.max() - requires the field's value to be less than or equal to the provided number.  
* FormBuilderValidators.min() - requires the field's value to be greater than or equal to the provided number.  
* FormBuilderValidators.negativeNumber() - requires the field's to be a negative number.  
* FormBuilderValidators.notZeroNumber() - requires the field's to be not a number zero.  
* FormBuilderValidators.numeric() - requires the field's value to be a valid number.  
* FormBuilderValidators.oddNumber() - requires the field's to be an odd number.  
* FormBuilderValidators.positiveNumber() - requires the field's to be a positive number.  
* FormBuilderValidators.prime() - requires the field's to be a prime number.

#### String  
* FormBuilderValidators.alphabetical() - requires the field's to contain only alphabetical characters.  
* FormBuilderValidators.contains() - requires the substring to be in the field's value.  
* FormBuilderValidators.endsWith() - requires the substring to be the end of the field's value.  
* FormBuilderValidators.lowercase() - requires the field's value to be lowercase.  
* FormBuilderValidators.matchNot() - requires the field's value to not match the provided regex pattern.  
* FormBuilderValidators.match() - requires the field's value to match the provided regex pattern.  
* FormBuilderValidators.maxWordsCount() - requires the word count of the field's value to be less than or equal to the provided maximum count.  
* FormBuilderValidators.minWordsCount() - requires the word count of the field's value to be greater than or equal to the provided minimum count.  
* FormBuilderValidators.singleLine() - requires the field's string to be a single line of text.  
* FormBuilderValidators.startsWith() - requires the substring to be the start of the field's value.  
* FormBuilderValidators.uppercase() - requires the field's value to be uppercase.

#### Use-case  
* FormBuilderValidators.base64() - requires the field's to be a valid base64 string.  
* FormBuilderValidators.colorCode() - requires the field's value to be a valid color code.  
* FormBuilderValidators.duns() - requires the field's value to be a valid DUNS.  
* FormBuilderValidators.isbn() - requires the field's to be a valid ISBN.  
* FormBuilderValidators.json() - requires the field's to be a valid json string.  
* FormBuilderValidators.languageCode() - requires the field's to be a valid language code.  
* FormBuilderValidators.licensePlate() - requires the field's to be a valid license plate.  
* FormBuilderValidators.uuid() - requires the field's to be a valid uuid.  
* FormBuilderValidators.vin() - requires the field's to be a valid VIN number.

#### Extension method  
* FormBuilderValidator.and() - Combines the current validator with another validator using logical AND.  
* FormBuilderValidator.or() - Combines the current validator with another validator using logical OR.  
* FormBuilderValidator.when() - Adds a condition to apply the validator only if the condition is met.  
* FormBuilderValidator.unless() - Adds a condition to apply the validator only if the condition is not met.  
* FormBuilderValidator.transform() - Transforms the value before applying the validator.  
* FormBuilderValidator.skipWhen() - Skips the validator if the condition is met.  
* FormBuilderValidator.log() - Logs the value during the validation process.  
* FormBuilderValidator.withErrorMessage() - Overrides the error message of the current validator.  