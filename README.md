# basicformbuilder

A Flutter FormBuilder project.

## Getting Started

The following input fields utilize single input Methods:
FormBuilderDateRangePicker
 Required
    name:
    firstDate:
    lastDate:

FormBuilderDateTimePicker
 Required
    name:

FormBuilderSlider
 Required
    name:
    min:
    max:
    initialValue:

FormBuilderRangeSlider
 Required
    name:
    min:
    max:

FormBuilderCheckbox
 Required
    name: 
    title: 

FormBuilderTextField
 Required
    name:

FormBuilderSwitch
 Required
    title:
    name:

The following input fields utilize Discrete, Map and List variables:
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

FormBuilderChoiceChip
FormBuilderFilterChip
 Discrete version
    FormBuilderChipOption(
    value: 'Map 1',
    avatar: CircleAvatar(child: Text('1')),
    ),

 Map Version
    mapOptions.entries
    .map((entry) => FormBuilderChipOption(
    value: entry.key,
    avatar: CircleAvatar(child: Text(entry.value)),
    )).toList(growable: false),

FormBuilderCheckboxGroup
FormBuilderRadioGroup
 Discrete version
    FormBuilderFieldOption(value: 'List 1'),
 List Version
    listOptions.map((lo) => 
    FormBuilderFieldOption(
    value: lo,
    child: Text(lo),))
    .toList(growable: false),


FormBuilderDropdown
 Discrete version
    DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: 'list1',
        child: Text('List 1'),),
 List Version
    listOptions.map((lo) => DropdownMenuItem(
        alignment: AlignmentDirectional.center,
        value: lo,
        child: Text(lo),))
        .toList(),