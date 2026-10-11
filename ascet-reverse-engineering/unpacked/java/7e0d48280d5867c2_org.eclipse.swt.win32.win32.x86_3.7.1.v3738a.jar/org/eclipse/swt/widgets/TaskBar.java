/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PROPERTYKEY;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TaskItem;
import org.eclipse.swt.widgets.Widget;

public class TaskBar
extends Widget {
    int itemCount;
    TaskItem[] items = new TaskItem[4];
    int mTaskbarList3;
    static final char[] EXE_PATH;
    static final char[] ICO_DIR;
    static final PROPERTYKEY PKEY_Title;
    static final PROPERTYKEY PKEY_AppUserModel_IsDestListSeparator;
    static final String EXE_PATH_KEY = "org.eclipse.swt.win32.taskbar.executable";
    static final String EXE_ARGS_KEY = "org.eclipse.swt.win32.taskbar.arguments";
    static final String ICON_KEY = "org.eclipse.swt.win32.taskbar.icon";
    static final String ICON_INDEX_KEY = "org.eclipse.swt.win32.taskbar.icon.index";
    static final byte[] CLSID_TaskbarList;
    static final byte[] CLSID_DestinationList;
    static final byte[] CLSID_EnumerableObjectCollection;
    static final byte[] CLSID_ShellLink;
    static final byte[] CLSID_FileOperation;
    static final byte[] IID_ITaskbarList3;
    static final byte[] IID_ICustomDestinationList;
    static final byte[] IID_IObjectArray;
    static final byte[] IID_IObjectCollection;
    static final byte[] IID_IShellLinkW;
    static final byte[] IID_IPropertyStore;
    static final byte[] IID_IShellItem;
    static final byte[] IID_IFileOperation;
    static final byte[] FOLDERID_LocalAppData;

    static {
        char[] cArray = new char[8];
        cArray[0] = 105;
        cArray[1] = 99;
        cArray[2] = 111;
        cArray[3] = 95;
        cArray[4] = 100;
        cArray[5] = 105;
        cArray[6] = 114;
        ICO_DIR = cArray;
        PKEY_Title = new PROPERTYKEY();
        PKEY_AppUserModel_IsDestListSeparator = new PROPERTYKEY();
        CLSID_TaskbarList = new byte[16];
        CLSID_DestinationList = new byte[16];
        CLSID_EnumerableObjectCollection = new byte[16];
        CLSID_ShellLink = new byte[16];
        CLSID_FileOperation = new byte[16];
        IID_ITaskbarList3 = new byte[16];
        IID_ICustomDestinationList = new byte[16];
        IID_IObjectArray = new byte[16];
        IID_IObjectCollection = new byte[16];
        IID_IShellLinkW = new byte[16];
        IID_IPropertyStore = new byte[16];
        IID_IShellItem = new byte[16];
        IID_IFileOperation = new byte[16];
        FOLDERID_LocalAppData = new byte[16];
        OS.IIDFromString("{56FDF344-FD6D-11d0-958A-006097C9A090}\u0000".toCharArray(), CLSID_TaskbarList);
        OS.IIDFromString("{77f10cf0-3db5-4966-b520-b7c54fd35ed6}\u0000".toCharArray(), CLSID_DestinationList);
        OS.IIDFromString("{2d3468c1-36a7-43b6-ac24-d3f02fd9607a}\u0000".toCharArray(), CLSID_EnumerableObjectCollection);
        OS.IIDFromString("{00021401-0000-0000-C000-000000000046}\u0000".toCharArray(), CLSID_ShellLink);
        OS.IIDFromString("{3ad05575-8857-4850-9277-11b85bdb8e09}\u0000".toCharArray(), CLSID_FileOperation);
        OS.IIDFromString("{EA1AFB91-9E28-4B86-90E9-9E9F8A5EEFAF}\u0000".toCharArray(), IID_ITaskbarList3);
        OS.IIDFromString("{6332debf-87b5-4670-90c0-5e57b408a49e}\u0000".toCharArray(), IID_ICustomDestinationList);
        OS.IIDFromString("{92CA9DCD-5622-4bba-A805-5E9F541BD8C9}\u0000".toCharArray(), IID_IObjectArray);
        OS.IIDFromString("{5632b1a4-e38a-400a-928a-d4cd63230295}\u0000".toCharArray(), IID_IObjectCollection);
        OS.IIDFromString("{000214F9-0000-0000-C000-000000000046}\u0000".toCharArray(), IID_IShellLinkW);
        OS.IIDFromString("{886d8eeb-8cf2-4446-8d02-cdba1dbdcf99}\u0000".toCharArray(), IID_IPropertyStore);
        OS.IIDFromString("{43826d1e-e718-42ee-bc55-a1e261c37bfe}\u0000".toCharArray(), IID_IShellItem);
        OS.IIDFromString("{947aab5f-0a5c-4c13-b4d6-4bf7836fc9f8}\u0000".toCharArray(), IID_IFileOperation);
        OS.IIDFromString("{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}\u0000".toCharArray(), FOLDERID_LocalAppData);
        OS.PSPropertyKeyFromString("{F29F85E0-4FF9-1068-AB91-08002B27B3D9} 2\u0000".toCharArray(), PKEY_Title);
        OS.PSPropertyKeyFromString("{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 6\u0000".toCharArray(), PKEY_AppUserModel_IsDestListSeparator);
        TCHAR buffer = new TCHAR(0, 260);
        while (OS.GetModuleFileName(0, buffer, buffer.length()) == buffer.length()) {
            buffer = new TCHAR(0, buffer.length() + 260);
        }
        int length = buffer.strlen();
        EXE_PATH = new char[length + 1];
        System.arraycopy(buffer.chars, 0, EXE_PATH, 0, length);
    }

    TaskBar(Display display, int style) {
        if (display == null) {
            display = Display.getCurrent();
        }
        if (display == null) {
            display = Display.getDefault();
        }
        if (!display.isValidThread()) {
            this.error(22);
        }
        this.display = display;
        this.createHandle();
        this.reskinWidget();
    }

    void createHandle() {
        int[] ppv = new int[1];
        int hr = OS.CoCreateInstance(CLSID_TaskbarList, 0, 1, IID_ITaskbarList3, ppv);
        if (hr != 0) {
            this.error(2);
        }
        this.mTaskbarList3 = ppv[0];
    }

    void createItem(TaskItem item, int index) {
        if (index == -1) {
            index = this.itemCount;
        }
        if (index < 0 || index > this.itemCount) {
            this.error(6);
        }
        if (this.itemCount == this.items.length) {
            TaskItem[] newItems = new TaskItem[this.items.length + 4];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
        }
        System.arraycopy(this.items, index, this.items, index + 1, this.itemCount++ - index);
        this.items[index] = item;
    }

    void createItems() {
        Shell[] shells = this.display.getShells();
        int i = 0;
        while (i < shells.length) {
            this.getItem(shells[i]);
            ++i;
        }
        this.getItem(null);
    }

    int createShellLink(MenuItem item, String directory) {
        int pPropStore;
        PROPERTYKEY key;
        int style = item.getStyle();
        if ((style & 0x40) != 0) {
            return 0;
        }
        int[] ppv = new int[1];
        int hr = OS.CoCreateInstance(CLSID_ShellLink, 0, 1, IID_IShellLinkW, ppv);
        if (hr != 0) {
            this.error(2);
        }
        int pLink = ppv[0];
        int hHeap = OS.GetProcessHeap();
        int pv = OS.HeapAlloc(hHeap, 8, OS.PROPVARIANT_sizeof());
        int titlePtr = 0;
        if ((style & 2) != 0) {
            OS.MoveMemory(pv, new short[]{11}, 2);
            OS.MoveMemory(pv + 8, new short[]{-1}, 2);
            key = PKEY_AppUserModel_IsDestListSeparator;
        } else {
            String text = item.getText();
            int length = text.length();
            char[] buffer = new char[length + 1];
            text.getChars(0, length, buffer, 0);
            titlePtr = OS.HeapAlloc(hHeap, 8, buffer.length * 2);
            OS.MoveMemory(titlePtr, buffer, buffer.length * 2);
            OS.MoveMemory(pv, new short[]{31}, 2);
            OS.MoveMemory(pv + 8, new int[]{titlePtr}, OS.PTR_SIZEOF);
            key = PKEY_Title;
            String exePath = (String)item.getData(EXE_PATH_KEY);
            if (exePath != null) {
                length = exePath.length();
                buffer = new char[length + 1];
                exePath.getChars(0, length, buffer, 0);
            } else {
                buffer = EXE_PATH;
            }
            hr = OS.VtblCall(20, pLink, buffer);
            if (hr != 0) {
                this.error(5);
            }
            if ((text = (String)item.getData(EXE_ARGS_KEY)) == null) {
                text = "--launcher.openFile /SWTINTERNAL_ID" + item.id;
            }
            length = text.length();
            buffer = new char[length + 1];
            text.getChars(0, length, buffer, 0);
            hr = OS.VtblCall(11, pLink, buffer);
            if (hr != 0) {
                this.error(5);
            }
            String icon = (String)item.getData(ICON_KEY);
            int index = 0;
            if (icon != null) {
                text = (String)item.getData(ICON_INDEX_KEY);
                if (text != null) {
                    index = Integer.parseInt(text);
                }
            } else {
                Image image = item.getImage();
                if (image != null && directory != null) {
                    ImageData data;
                    icon = String.valueOf(directory) + "\\menu" + item.id + ".ico";
                    if (item.hBitmap != 0) {
                        Image image2 = Image.win32_new(this.display, 0, item.hBitmap);
                        data = image2.getImageData();
                    } else {
                        data = image.getImageData();
                    }
                    ImageLoader loader = new ImageLoader();
                    loader.data = new ImageData[]{data};
                    loader.save(icon, 3);
                }
            }
            if (icon != null) {
                length = icon.length();
                buffer = new char[length + 1];
                icon.getChars(0, length, buffer, 0);
                hr = OS.VtblCall(17, pLink, buffer, index);
                if (hr != 0) {
                    this.error(5);
                }
            }
        }
        hr = OS.VtblCall(0, pLink, IID_IPropertyStore, ppv);
        if (hr != 0) {
            this.error(2);
        }
        if ((hr = OS.VtblCall(6, pPropStore = ppv[0], key, pv)) != 0) {
            this.error(5);
        }
        OS.VtblCall(7, pPropStore);
        OS.VtblCall(2, pPropStore);
        OS.HeapFree(hHeap, 0, pv);
        if (titlePtr != 0) {
            OS.HeapFree(hHeap, 0, titlePtr);
        }
        return pLink;
    }

    int createShellLinkArray(MenuItem[] items, String directory) {
        if (items == null) {
            return 0;
        }
        if (items.length == 0) {
            return 0;
        }
        int[] ppv = new int[1];
        int hr = OS.CoCreateInstance(CLSID_EnumerableObjectCollection, 0, 1, IID_IObjectCollection, ppv);
        if (hr != 0) {
            this.error(2);
        }
        int pObjColl = ppv[0];
        int i = 0;
        while (i < items.length) {
            int pLink = this.createShellLink(items[i], directory);
            if (pLink != 0) {
                hr = OS.VtblCall(5, pObjColl, pLink);
                if (hr != 0) {
                    this.error(5);
                }
                OS.VtblCall(2, pLink);
            }
            ++i;
        }
        hr = OS.VtblCall(0, pObjColl, IID_IObjectArray, ppv);
        if (hr != 0) {
            this.error(2);
        }
        int poa = ppv[0];
        OS.VtblCall(2, pObjColl);
        return poa;
    }

    void destroyItem(TaskItem item) {
        int index = 0;
        while (index < this.itemCount) {
            if (this.items[index] == item) break;
            ++index;
        }
        if (index == this.itemCount) {
            return;
        }
        System.arraycopy(this.items, index + 1, this.items, index, --this.itemCount - index);
        this.items[this.itemCount] = null;
    }

    String getDirectory(char[] appName) {
        char[] appDir = new char[appName.length];
        int i = 0;
        while (i < appName.length) {
            char c = appName[i];
            switch (c) {
                case '\"': 
                case '*': 
                case '/': 
                case ':': 
                case '<': 
                case '>': 
                case '?': 
                case '\\': 
                case '|': {
                    appDir[i] = 95;
                    break;
                }
                default: {
                    appDir[i] = c;
                }
            }
            ++i;
        }
        String result = null;
        int[] ppv = new int[1];
        int hr = OS.SHCreateItemInKnownFolder(FOLDERID_LocalAppData, 0, null, IID_IShellItem, ppv);
        if (hr == 0) {
            int psiRoot = ppv[0];
            hr = OS.CoCreateInstance(CLSID_FileOperation, 0, 1, IID_IFileOperation, ppv);
            if (hr == 0) {
                int psiAppDir;
                int pfo = ppv[0];
                hr = OS.VtblCall(5, pfo, 1556);
                if (hr == 0 && (psiAppDir = this.getDirectory(psiRoot, pfo, appDir, false)) != 0) {
                    int psiIcoDir = this.getDirectory(psiAppDir, pfo, ICO_DIR, true);
                    if (psiIcoDir != 0) {
                        hr = OS.VtblCall(5, psiIcoDir, -2147123200, ppv);
                        if (hr == 0) {
                            int wstr = ppv[0];
                            int length = OS.wcslen(wstr);
                            char[] buffer = new char[length];
                            OS.MoveMemory(buffer, wstr, length * 2);
                            result = new String(buffer);
                            OS.CoTaskMemFree(wstr);
                        }
                        OS.VtblCall(2, psiIcoDir);
                    }
                    OS.VtblCall(2, psiAppDir);
                }
                OS.VtblCall(2, pfo);
            }
            OS.VtblCall(2, psiRoot);
        }
        return result;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    int getDirectory(int parent, int pfo, char[] name, boolean delete) {
        int[] ppv = new int[1];
        int hr = OS.SHCreateItemFromRelativeName(parent, name, 0, IID_IShellItem, ppv);
        if (hr == 0) {
            if (!delete) return ppv[0];
            hr = OS.VtblCall(18, pfo, ppv[0], 0);
            OS.VtblCall(2, ppv[0]);
            if (hr != 0 || (hr = OS.VtblCall(20, pfo, parent, 16, name, null, 0)) != 0 || (hr = OS.VtblCall(21, pfo)) != 0 || (hr = OS.SHCreateItemFromRelativeName(parent, name, 0, IID_IShellItem, ppv)) != 0) return 0;
            return ppv[0];
        }
        hr = OS.VtblCall(20, pfo, parent, 16, name, null, 0);
        if (hr != 0 || (hr = OS.VtblCall(21, pfo)) != 0 || (hr = OS.SHCreateItemFromRelativeName(parent, name, 0, IID_IShellItem, ppv)) != 0) return 0;
        return ppv[0];
    }

    public TaskItem getItem(int index) {
        this.checkWidget();
        this.createItems();
        if (index < 0 || index >= this.itemCount) {
            this.error(6);
        }
        return this.items[index];
    }

    public TaskItem getItem(Shell shell) {
        this.checkWidget();
        int i = 0;
        while (i < this.items.length) {
            if (this.items[i] != null && this.items[i].shell == shell) {
                return this.items[i];
            }
            ++i;
        }
        TaskItem item = new TaskItem(this, 0);
        if (shell != null) {
            item.setShell(shell);
        }
        return item;
    }

    public int getItemCount() {
        this.checkWidget();
        this.createItems();
        return this.itemCount;
    }

    public TaskItem[] getItems() {
        this.checkWidget();
        this.createItems();
        TaskItem[] result = new TaskItem[this.itemCount];
        System.arraycopy(this.items, 0, result, 0, result.length);
        return result;
    }

    void releaseChildren(boolean destroy) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                TaskItem item = this.items[i];
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                ++i;
            }
            this.items = null;
        }
        super.releaseChildren(destroy);
    }

    void releaseParent() {
        super.releaseParent();
        if (this.display.taskBar == this) {
            this.display.taskBar = null;
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.mTaskbarList3 != 0) {
            OS.VtblCall(2, this.mTaskbarList3);
            this.mTaskbarList3 = 0;
        }
    }

    void reskinChildren(int flags) {
        if (this.items != null) {
            int i = 0;
            while (i < this.items.length) {
                TaskItem item = this.items[i];
                if (item != null) {
                    item.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    void setMenu(Menu menu) {
        int[] ppv = new int[1];
        int hr = OS.CoCreateInstance(CLSID_DestinationList, 0, 1, IID_ICustomDestinationList, ppv);
        if (hr != 0) {
            this.error(2);
        }
        int pDestList = ppv[0];
        String appName = Display.APP_NAME;
        char[] cArray = new char[4];
        cArray[0] = 83;
        cArray[1] = 87;
        cArray[2] = 84;
        char[] buffer = cArray;
        if (appName != null && appName.length() > 0) {
            int length = appName.length();
            buffer = new char[length + 1];
            appName.getChars(0, length, buffer, 0);
        }
        MenuItem[] items = null;
        if (menu != null && (items = menu.getItems()).length != 0) {
            String directory = null;
            int i = 0;
            while (i < items.length) {
                MenuItem item = items[i];
                if (item.getImage() != null && item.getData(ICON_KEY) == null) {
                    directory = this.getDirectory(buffer);
                    break;
                }
                ++i;
            }
            int poa = this.createShellLinkArray(items, directory);
            if (poa != 0) {
                hr = OS.VtblCall(3, pDestList, buffer);
                if (hr != 0) {
                    this.error(5);
                }
                int[] cMaxSlots = new int[1];
                OS.VtblCall(4, pDestList, cMaxSlots, IID_IObjectArray, ppv);
                if (hr != 0) {
                    this.error(5);
                }
                int pRemovedItems = ppv[0];
                int[] count = new int[1];
                OS.VtblCall(3, poa, count);
                if (count[0] != 0 && (hr = OS.VtblCall(7, pDestList, poa)) != 0) {
                    this.error(5);
                }
                int i2 = 0;
                while (i2 < items.length) {
                    Menu subMenu;
                    MenuItem item = items[i2];
                    if ((item.getStyle() & 0x40) != 0 && (subMenu = item.getMenu()) != null) {
                        int poa2;
                        MenuItem[] subItems = subMenu.getItems();
                        if (directory == null) {
                            int j = 0;
                            while (j < subItems.length) {
                                MenuItem subItem = subItems[j];
                                if (subItem.getImage() != null && subItem.getData(ICON_KEY) == null) {
                                    directory = this.getDirectory(buffer);
                                    break;
                                }
                                ++j;
                            }
                        }
                        if ((poa2 = this.createShellLinkArray(subItems, directory)) != 0) {
                            OS.VtblCall(3, poa2, count);
                            if (count[0] != 0) {
                                String text = item.getText();
                                int length = text.length();
                                char[] buffer2 = new char[length + 1];
                                text.getChars(0, length, buffer2, 0);
                                hr = OS.VtblCall(5, pDestList, buffer2, poa2);
                                if (hr != 0) {
                                    this.error(5);
                                }
                            }
                            OS.VtblCall(2, poa2);
                        }
                    }
                    ++i2;
                }
                hr = OS.VtblCall(8, pDestList);
                if (hr != 0) {
                    this.error(5);
                }
                if (pRemovedItems != 0) {
                    OS.VtblCall(2, pRemovedItems);
                }
                OS.VtblCall(2, poa);
            }
        } else {
            hr = OS.VtblCall(10, pDestList, buffer);
            if (hr != 0) {
                this.error(5);
            }
        }
        OS.VtblCall(2, pDestList);
    }
}

