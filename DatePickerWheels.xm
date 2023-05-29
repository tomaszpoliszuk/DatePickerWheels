/* Date Picker - Wheels
 * (c) Copyright 2020-2023 Tomasz Poliszuk
 *
 * Date Picker - Wheels is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * Date Picker - Wheels is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Date Picker - Wheels. If not, see <https://www.gnu.org/licenses/>.
 */


%hook UIDatePicker
- (long long)datePickerStyle {
	long long origValue = %orig;
	if ( origValue != 2 ) {
		return 1;
	}
	return origValue;
}
- (long long)preferredDatePickerStyle {
	long long origValue = %orig;
	if ( origValue != 2 ) {
		return 1;
	}
	return origValue;
}
- (void)setPreferredDatePickerStyle:(long long)arg1 {
	if ( arg1 != 2 ) {
		%orig(1);
	} else {
		%orig;
	}
}
%end
