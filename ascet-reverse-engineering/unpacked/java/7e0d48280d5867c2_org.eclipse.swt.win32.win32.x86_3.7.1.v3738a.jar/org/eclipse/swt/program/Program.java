/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.program;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.internal.win32.FILETIME;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PROCESS_INFORMATION;
import org.eclipse.swt.internal.win32.SHELLEXECUTEINFO;
import org.eclipse.swt.internal.win32.SHFILEINFO;
import org.eclipse.swt.internal.win32.SHFILEINFOA;
import org.eclipse.swt.internal.win32.SHFILEINFOW;
import org.eclipse.swt.internal.win32.STARTUPINFO;
import org.eclipse.swt.internal.win32.TCHAR;

public final class Program {
    String name;
    String command;
    String iconName;
    String extension;
    static final String[] ARGUMENTS = new String[]{"%1", "%l", "%L"};

    Program() {
    }

    static String assocQueryString(int assocStr, TCHAR key, boolean expand) {
        int flags = 1056;
        TCHAR pszOut = new TCHAR(0, 1024);
        int[] pcchOut = new int[]{pszOut.length()};
        int result = OS.AssocQueryString(flags, assocStr, key, null, pszOut, pcchOut);
        if (result == -2147467261) {
            pszOut = new TCHAR(0, pcchOut[0]);
            result = OS.AssocQueryString(flags, assocStr, key, null, pszOut, pcchOut);
        }
        if (result == 0) {
            if (!OS.IsWinCE && expand) {
                int length = OS.ExpandEnvironmentStrings(pszOut, null, 0);
                if (length != 0) {
                    TCHAR lpDst = new TCHAR(0, length);
                    OS.ExpandEnvironmentStrings(pszOut, lpDst, length);
                    return lpDst.toString(0, Math.max(0, length - 1));
                }
                return "";
            }
            return pszOut.toString(0, Math.max(0, pcchOut[0] - 1));
        }
        return null;
    }

    public static Program findProgram(String extension) {
        if (extension == null) {
            SWT.error(4);
        }
        if (extension.length() == 0) {
            return null;
        }
        if (extension.charAt(0) != '.') {
            extension = "." + extension;
        }
        TCHAR key = new TCHAR(0, extension, true);
        Program program = null;
        if (OS.IsWinCE) {
            TCHAR lpData;
            int[] phkResult = new int[1];
            if (OS.RegOpenKeyEx(Integer.MIN_VALUE, key, 0, 131097, phkResult) != 0) {
                return null;
            }
            int[] lpcbData = new int[1];
            int result = OS.RegQueryValueEx(phkResult[0], null, 0, null, null, lpcbData);
            if (result == 0 && (result = OS.RegQueryValueEx(phkResult[0], null, 0, null, lpData = new TCHAR(0, lpcbData[0] / TCHAR.sizeof), lpcbData)) == 0) {
                program = Program.getProgram(lpData.toString(0, lpData.strlen()), extension);
            }
            OS.RegCloseKey(phkResult[0]);
        } else {
            String command = Program.assocQueryString(1, key, true);
            if (command != null) {
                String iconName;
                String name = null;
                if (name == null) {
                    name = Program.assocQueryString(3, key, false);
                }
                if (name == null) {
                    name = Program.assocQueryString(4, key, false);
                }
                if (name == null) {
                    name = "";
                }
                if ((iconName = Program.assocQueryString(15, key, true)) == null) {
                    iconName = "";
                }
                program = new Program();
                program.name = name;
                program.command = command;
                program.iconName = iconName;
                program.extension = extension;
            }
        }
        return program;
    }

    public static String[] getExtensions() {
        String[] extensions = new String[1024];
        TCHAR lpName = new TCHAR(0, 1024);
        int[] lpcName = new int[]{lpName.length()};
        FILETIME ft = new FILETIME();
        int dwIndex = 0;
        int count = 0;
        while (OS.RegEnumKeyEx(Integer.MIN_VALUE, dwIndex, lpName, lpcName, null, null, null, ft) != 259) {
            String extension = lpName.toString(0, lpcName[0]);
            lpcName[0] = lpName.length();
            if (extension.length() > 0 && extension.charAt(0) == '.') {
                if (count == extensions.length) {
                    String[] newExtensions = new String[extensions.length + 1024];
                    System.arraycopy(extensions, 0, newExtensions, 0, extensions.length);
                    extensions = newExtensions;
                }
                extensions[count++] = extension;
            }
            ++dwIndex;
        }
        if (count != extensions.length) {
            String[] newExtension = new String[count];
            System.arraycopy(extensions, 0, newExtension, 0, count);
            extensions = newExtension;
        }
        return extensions;
    }

    static String getKeyValue(String string, boolean expand) {
        TCHAR key = new TCHAR(0, string, true);
        int[] phkResult = new int[1];
        if (OS.RegOpenKeyEx(Integer.MIN_VALUE, key, 0, 131097, phkResult) != 0) {
            return null;
        }
        String result = null;
        int[] lpcbData = new int[1];
        if (OS.RegQueryValueEx(phkResult[0], null, 0, null, null, lpcbData) == 0) {
            TCHAR lpData;
            result = "";
            int length = lpcbData[0] / TCHAR.sizeof;
            if (length != 0 && OS.RegQueryValueEx(phkResult[0], null, 0, null, lpData = new TCHAR(0, length), lpcbData) == 0) {
                if (!OS.IsWinCE && expand) {
                    length = OS.ExpandEnvironmentStrings(lpData, null, 0);
                    if (length != 0) {
                        TCHAR lpDst = new TCHAR(0, length);
                        OS.ExpandEnvironmentStrings(lpData, lpDst, length);
                        result = lpDst.toString(0, Math.max(0, length - 1));
                    }
                } else {
                    length = Math.max(0, lpData.length() - 1);
                    result = lpData.toString(0, length);
                }
            }
        }
        if (phkResult[0] != 0) {
            OS.RegCloseKey(phkResult[0]);
        }
        return result;
    }

    static Program getProgram(String key, String extension) {
        String name = Program.getKeyValue(key, false);
        if (name == null || name.length() == 0) {
            name = key;
        }
        String DEFAULT_COMMAND = "\\shell";
        String defaultCommand = Program.getKeyValue(String.valueOf(key) + DEFAULT_COMMAND, true);
        if (defaultCommand == null || defaultCommand.length() == 0) {
            defaultCommand = "open";
        }
        String COMMAND = "\\shell\\" + defaultCommand + "\\command";
        String command = Program.getKeyValue(String.valueOf(key) + COMMAND, true);
        if (command == null || command.length() == 0) {
            return null;
        }
        String DEFAULT_ICON = "\\DefaultIcon";
        String iconName = Program.getKeyValue(String.valueOf(key) + DEFAULT_ICON, true);
        if (iconName == null) {
            iconName = "";
        }
        Program program = new Program();
        program.name = name;
        program.command = command;
        program.iconName = iconName;
        program.extension = extension;
        return program;
    }

    public static Program[] getPrograms() {
        Program[] programs = new Program[1024];
        TCHAR lpName = new TCHAR(0, 1024);
        int[] lpcName = new int[]{lpName.length()};
        FILETIME ft = new FILETIME();
        int dwIndex = 0;
        int count = 0;
        while (OS.RegEnumKeyEx(Integer.MIN_VALUE, dwIndex, lpName, lpcName, null, null, null, ft) != 259) {
            String path = lpName.toString(0, lpcName[0]);
            lpcName[0] = lpName.length();
            Program program = Program.getProgram(path, null);
            if (program != null) {
                if (count == programs.length) {
                    Program[] newPrograms = new Program[programs.length + 1024];
                    System.arraycopy(programs, 0, newPrograms, 0, programs.length);
                    programs = newPrograms;
                }
                programs[count++] = program;
            }
            ++dwIndex;
        }
        if (count != programs.length) {
            Program[] newPrograms = new Program[count];
            System.arraycopy(programs, 0, newPrograms, 0, count);
            programs = newPrograms;
        }
        return programs;
    }

    public static boolean launch(String fileName) {
        return Program.launch(fileName, null);
    }

    public static boolean launch(String fileName, String workingDir) {
        if (fileName == null) {
            SWT.error(4);
        }
        int hHeap = OS.GetProcessHeap();
        TCHAR buffer = new TCHAR(0, fileName, true);
        int byteCount = buffer.length() * TCHAR.sizeof;
        int lpFile = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpFile, buffer, byteCount);
        int lpDirectory = 0;
        if (workingDir != null && OS.PathIsExe(lpFile)) {
            TCHAR buffer1 = new TCHAR(0, workingDir, true);
            byteCount = buffer1.length() * TCHAR.sizeof;
            lpDirectory = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(lpDirectory, buffer1, byteCount);
        }
        SHELLEXECUTEINFO info = new SHELLEXECUTEINFO();
        info.cbSize = SHELLEXECUTEINFO.sizeof;
        info.lpFile = lpFile;
        info.lpDirectory = lpDirectory;
        info.nShow = 5;
        boolean result = OS.ShellExecuteEx(info);
        if (lpFile != 0) {
            OS.HeapFree(hHeap, 0, lpFile);
        }
        if (lpDirectory != 0) {
            OS.HeapFree(hHeap, 0, lpDirectory);
        }
        return result;
    }

    public boolean execute(String fileName) {
        if (fileName == null) {
            SWT.error(4);
        }
        int index = 0;
        boolean append = true;
        String prefix = this.command;
        String suffix = "";
        while (index < ARGUMENTS.length) {
            int i = this.command.indexOf(ARGUMENTS[index]);
            if (i != -1) {
                append = false;
                prefix = this.command.substring(0, i);
                suffix = this.command.substring(i + ARGUMENTS[index].length(), this.command.length());
                break;
            }
            ++index;
        }
        if (append) {
            fileName = " \"" + fileName + "\"";
        }
        String commandLine = String.valueOf(prefix) + fileName + suffix;
        int hHeap = OS.GetProcessHeap();
        TCHAR buffer = new TCHAR(0, commandLine, true);
        int byteCount = buffer.length() * TCHAR.sizeof;
        int lpCommandLine = OS.HeapAlloc(hHeap, 8, byteCount);
        OS.MoveMemory(lpCommandLine, buffer, byteCount);
        STARTUPINFO lpStartupInfo = new STARTUPINFO();
        lpStartupInfo.cb = STARTUPINFO.sizeof;
        PROCESS_INFORMATION lpProcessInformation = new PROCESS_INFORMATION();
        boolean success = OS.CreateProcess(0, lpCommandLine, 0, 0, false, 0, 0, 0, lpStartupInfo, lpProcessInformation);
        if (lpCommandLine != 0) {
            OS.HeapFree(hHeap, 0, lpCommandLine);
        }
        if (lpProcessInformation.hProcess != 0) {
            OS.CloseHandle(lpProcessInformation.hProcess);
        }
        if (lpProcessInformation.hThread != 0) {
            OS.CloseHandle(lpProcessInformation.hThread);
        }
        return success;
    }

    public ImageData getImageData() {
        int length;
        if (this.extension != null) {
            SHFILEINFO shfi = OS.IsUnicode ? new SHFILEINFOW() : new SHFILEINFOA();
            int flags = 273;
            TCHAR pszPath = new TCHAR(0, this.extension, true);
            OS.SHGetFileInfo(pszPath, 128, shfi, SHFILEINFO.sizeof, flags);
            if (shfi.hIcon != 0) {
                Image image = Image.win32_new(null, 1, shfi.hIcon);
                ImageData imageData = image.getImageData();
                image.dispose();
                return imageData;
            }
        }
        int nIconIndex = 0;
        String fileName = this.iconName;
        int index = this.iconName.indexOf(44);
        if (index != -1) {
            fileName = this.iconName.substring(0, index);
            String iconIndex = this.iconName.substring(index + 1, this.iconName.length()).trim();
            try {
                nIconIndex = Integer.parseInt(iconIndex);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        if ((length = fileName.length()) > 1 && fileName.charAt(0) == '\"' && fileName.charAt(length - 1) == '\"') {
            fileName = fileName.substring(1, length - 1);
        }
        TCHAR lpszFile = new TCHAR(0, fileName, true);
        int[] phiconSmall = new int[1];
        int[] phiconLarge = null;
        OS.ExtractIconEx(lpszFile, nIconIndex, phiconLarge, phiconSmall, 1);
        if (phiconSmall[0] == 0) {
            return null;
        }
        Image image = Image.win32_new(null, 1, phiconSmall[0]);
        ImageData imageData = image.getImageData();
        image.dispose();
        return imageData;
    }

    public String getName() {
        return this.name;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Program) {
            Program program = (Program)other;
            return this.name.equals(program.name) && this.command.equals(program.command) && this.iconName.equals(program.iconName);
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode() ^ this.command.hashCode() ^ this.iconName.hashCode();
    }

    public String toString() {
        return "Program {" + this.name + "}";
    }
}

