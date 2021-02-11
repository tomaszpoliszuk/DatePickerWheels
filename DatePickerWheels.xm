/* Date Picker - Wheels
 * Copyright (C) 2020 Tomasz Poliszuk
 *
 * Date Picker - Wheels is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
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

%ctor {
//	Found in https://github.com/EthanRDoesMC/Dawn/commit/847cb5192dae9138a893e394da825e86be561a6b
	if (
		[[[[NSProcessInfo processInfo] arguments] objectAtIndex:0] containsString:@"/Application"]
		||
		[[[[NSProcessInfo processInfo] arguments] objectAtIndex:0] containsString:@"SpringBoard.app"]
	) {
		%init;
	}
}
