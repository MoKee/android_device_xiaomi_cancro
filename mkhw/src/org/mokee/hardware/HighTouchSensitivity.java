/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.mokee.hardware;

import org.mokee.internal.util.FileUtils;

public class HighTouchSensitivity {

    // Atmel Glove Mode
    private static String GLOVE_PATH_TS = "/proc/touchscreen/sensitive_mode";
    // Atmel Stylus mode
    private static String STYLUS_PATH_TS = "/proc/touchscreen/stylus";

    /**
     * Whether device supports high touch sensitivity.
     *
     * @return boolean Supported devices must return always true
     */
    public static boolean isSupported() {
        return FileUtils.isFileReadable(GLOVE_PATH_TS) &&
            FileUtils.isFileWritable(GLOVE_PATH_TS) &&
            FileUtils.isFileReadable(STYLUS_PATH_TS) &&
            FileUtils.isFileWritable(STYLUS_PATH_TS);
     }

    /**
     * This method return the current activation status of high touch sensitivity
     *
     * @return boolean Must be false if high touch sensitivity is not supported or not activated,
     * or the operation failed while reading the status; true in any other case.
     */
    public static boolean isEnabled() {
        return (FileUtils.readOneLine(GLOVE_PATH_TS).equals("1")) && FileUtils.readOneLine(STYLUS_PATH_TS).equals("1");
    }

    /**
     * This method allows to setup high touch sensitivity status.
     *
     * @param status The new high touch sensitivity status
     * @return boolean Must be false if high touch sensitivity is not supported or the operation
     * failed; true in any other case.
     */
    public static boolean setEnabled(boolean state) {
        return FileUtils.writeLine(GLOVE_PATH_TS, (state ? "1" : "0")) && FileUtils.writeLine(STYLUS_PATH_TS, (state ? "1" : "0"));
    }

}
