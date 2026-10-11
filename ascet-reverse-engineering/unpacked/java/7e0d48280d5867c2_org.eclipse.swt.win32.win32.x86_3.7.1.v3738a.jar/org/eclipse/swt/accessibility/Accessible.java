/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import java.util.Locale;
import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.AccessibleActionEvent;
import org.eclipse.swt.accessibility.AccessibleActionListener;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleAttributeEvent;
import org.eclipse.swt.accessibility.AccessibleAttributeListener;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleEditableTextEvent;
import org.eclipse.swt.accessibility.AccessibleEditableTextListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleHyperlinkEvent;
import org.eclipse.swt.accessibility.AccessibleHyperlinkListener;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.accessibility.AccessibleTableCellEvent;
import org.eclipse.swt.accessibility.AccessibleTableCellListener;
import org.eclipse.swt.accessibility.AccessibleTableEvent;
import org.eclipse.swt.accessibility.AccessibleTableListener;
import org.eclipse.swt.accessibility.AccessibleTextAttributeEvent;
import org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.accessibility.AccessibleTextExtendedListener;
import org.eclipse.swt.accessibility.AccessibleTextListener;
import org.eclipse.swt.accessibility.AccessibleValueEvent;
import org.eclipse.swt.accessibility.AccessibleValueListener;
import org.eclipse.swt.accessibility.Relation;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IAccessible;
import org.eclipse.swt.internal.ole.win32.IEnumVARIANT;
import org.eclipse.swt.internal.ole.win32.IServiceProvider;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TVITEM;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class Accessible {
    static final int MAX_RELATION_TYPES = 15;
    static final int TABLE_MODEL_CHANGE_SIZE = 5;
    static final int TEXT_CHANGE_SIZE = 4;
    static final boolean DEBUG = false;
    static final String PROPERTY_USEIA2 = "org.eclipse.swt.accessibility.UseIA2";
    static boolean UseIA2 = true;
    static int UniqueID = -16;
    int refCount = 0;
    int enumIndex = 0;
    COMObject objIAccessible;
    COMObject objIEnumVARIANT;
    COMObject objIServiceProvider;
    COMObject objIAccessible2;
    COMObject objIAccessibleAction;
    COMObject objIAccessibleApplication;
    COMObject objIAccessibleEditableText;
    COMObject objIAccessibleHyperlink;
    COMObject objIAccessibleHypertext;
    COMObject objIAccessibleTable2;
    COMObject objIAccessibleTableCell;
    COMObject objIAccessibleText;
    COMObject objIAccessibleValue;
    IAccessible iaccessible;
    Vector accessibleListeners = new Vector();
    Vector accessibleControlListeners = new Vector();
    Vector accessibleTextListeners = new Vector();
    Vector accessibleActionListeners = new Vector();
    Vector accessibleEditableTextListeners = new Vector();
    Vector accessibleHyperlinkListeners = new Vector();
    Vector accessibleTableListeners = new Vector();
    Vector accessibleTableCellListeners = new Vector();
    Vector accessibleTextExtendedListeners = new Vector();
    Vector accessibleValueListeners = new Vector();
    Vector accessibleAttributeListeners = new Vector();
    Relation[] relations = new Relation[15];
    Object[] variants;
    Accessible parent;
    Vector children = new Vector();
    Control control;
    int uniqueID = -1;
    int[] tableChange;
    Object[] textDeleted;
    Object[] textInserted;
    ToolItem item;

    static {
        String property = System.getProperty(PROPERTY_USEIA2);
        if (property != null && property.equalsIgnoreCase("false")) {
            UseIA2 = false;
        }
    }

    public Accessible(Accessible parent) {
        this.parent = Accessible.checkNull(parent);
        this.control = parent.control;
        parent.children.addElement(this);
        this.AddRef();
    }

    protected Accessible() {
    }

    Accessible(Control control) {
        this.control = control;
        int[] ppvObject = new int[1];
        int result = COM.CreateStdAccessibleObject(control.handle, -4, COM.IIDIAccessible, ppvObject);
        if (ppvObject[0] == 0) {
            return;
        }
        if (result != 0) {
            OLE.error(1001, result);
        }
        this.iaccessible = new IAccessible(ppvObject[0]);
        this.createIAccessible();
        this.AddRef();
    }

    Accessible(Accessible parent, int iaccessible_address) {
        this(parent);
        this.iaccessible = new IAccessible(iaccessible_address);
    }

    static Accessible checkNull(Accessible parent) {
        if (parent == null) {
            SWT.error(4);
        }
        return parent;
    }

    void createIAccessible() {
        int[] nArray = new int[28];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 3;
        nArray[5] = 5;
        nArray[6] = 8;
        nArray[7] = 1;
        nArray[8] = 1;
        nArray[9] = 2;
        nArray[10] = 2;
        nArray[11] = 2;
        nArray[12] = 2;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 2;
        nArray[16] = 3;
        nArray[17] = 2;
        nArray[18] = 1;
        nArray[19] = 1;
        nArray[20] = 2;
        nArray[21] = 2;
        nArray[22] = 5;
        nArray[23] = 3;
        nArray[24] = 3;
        nArray[25] = 1;
        nArray[26] = 2;
        nArray[27] = 2;
        this.objIAccessible = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method7(int[] args) {
                return Accessible.this.get_accParent(args[0]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_accChildCount(args[0]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_accChild(args[0], args[1]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_accName(args[0], args[1]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_accValue(args[0], args[1]);
            }

            public int method12(int[] args) {
                return Accessible.this.get_accDescription(args[0], args[1]);
            }

            public int method13(int[] args) {
                return Accessible.this.get_accRole(args[0], args[1]);
            }

            public int method14(int[] args) {
                return Accessible.this.get_accState(args[0], args[1]);
            }

            public int method15(int[] args) {
                return Accessible.this.get_accHelp(args[0], args[1]);
            }

            public int method16(int[] args) {
                return Accessible.this.get_accHelpTopic(args[0], args[1], args[2]);
            }

            public int method17(int[] args) {
                return Accessible.this.get_accKeyboardShortcut(args[0], args[1]);
            }

            public int method18(int[] args) {
                return Accessible.this.get_accFocus(args[0]);
            }

            public int method19(int[] args) {
                return Accessible.this.get_accSelection(args[0]);
            }

            public int method20(int[] args) {
                return Accessible.this.get_accDefaultAction(args[0], args[1]);
            }

            public int method21(int[] args) {
                return Accessible.this.accSelect(args[0], args[1]);
            }

            public int method22(int[] args) {
                return Accessible.this.accLocation(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method23(int[] args) {
                return Accessible.this.accNavigate(args[0], args[1], args[2]);
            }

            public int method24(int[] args) {
                return Accessible.this.accHitTest(args[0], args[1], args[2]);
            }

            public int method25(int[] args) {
                return Accessible.this.accDoDefaultAction(args[0]);
            }

            public int method26(int[] args) {
                return Accessible.this.put_accName(args[0], args[1]);
            }

            public int method27(int[] args) {
                return Accessible.this.put_accValue(args[0], args[1]);
            }
        };
        int ppVtable = this.objIAccessible.ppVtable;
        int[] pVtable = new int[1];
        COM.MoveMemory(pVtable, ppVtable, OS.PTR_SIZEOF);
        int[] funcs = new int[28];
        COM.MoveMemory(funcs, pVtable[0], OS.PTR_SIZEOF * funcs.length);
        funcs[9] = COM.get_accChild_CALLBACK(funcs[9]);
        funcs[10] = COM.get_accName_CALLBACK(funcs[10]);
        funcs[11] = COM.get_accValue_CALLBACK(funcs[11]);
        funcs[12] = COM.get_accDescription_CALLBACK(funcs[12]);
        funcs[13] = COM.get_accRole_CALLBACK(funcs[13]);
        funcs[14] = COM.get_accState_CALLBACK(funcs[14]);
        funcs[15] = COM.get_accHelp_CALLBACK(funcs[15]);
        funcs[16] = COM.get_accHelpTopic_CALLBACK(funcs[16]);
        funcs[17] = COM.get_accKeyboardShortcut_CALLBACK(funcs[17]);
        funcs[20] = COM.get_accDefaultAction_CALLBACK(funcs[20]);
        funcs[21] = COM.accSelect_CALLBACK(funcs[21]);
        funcs[22] = COM.accLocation_CALLBACK(funcs[22]);
        funcs[23] = COM.accNavigate_CALLBACK(funcs[23]);
        funcs[25] = COM.accDoDefaultAction_CALLBACK(funcs[25]);
        funcs[26] = COM.put_accName_CALLBACK(funcs[26]);
        funcs[27] = COM.put_accValue_CALLBACK(funcs[27]);
        COM.MoveMemory(pVtable[0], funcs, OS.PTR_SIZEOF * funcs.length);
    }

    void createIAccessible2() {
        int[] nArray = new int[46];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 3;
        nArray[5] = 5;
        nArray[6] = 8;
        nArray[7] = 1;
        nArray[8] = 1;
        nArray[9] = 2;
        nArray[10] = 2;
        nArray[11] = 2;
        nArray[12] = 2;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 2;
        nArray[16] = 3;
        nArray[17] = 2;
        nArray[18] = 1;
        nArray[19] = 1;
        nArray[20] = 2;
        nArray[21] = 2;
        nArray[22] = 5;
        nArray[23] = 3;
        nArray[24] = 3;
        nArray[25] = 1;
        nArray[26] = 2;
        nArray[27] = 2;
        nArray[28] = 1;
        nArray[29] = 2;
        nArray[30] = 3;
        nArray[31] = 1;
        nArray[32] = 1;
        nArray[33] = 3;
        nArray[34] = 3;
        nArray[35] = 1;
        nArray[36] = 1;
        nArray[37] = 1;
        nArray[38] = 1;
        nArray[39] = 3;
        nArray[40] = 3;
        nArray[41] = 1;
        nArray[42] = 1;
        nArray[43] = 1;
        nArray[44] = 1;
        nArray[45] = 1;
        this.objIAccessible2 = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method7(int[] args) {
                return Accessible.this.get_accParent(args[0]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_accChildCount(args[0]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_accChild(args[0], args[1]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_accName(args[0], args[1]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_accValue(args[0], args[1]);
            }

            public int method12(int[] args) {
                return Accessible.this.get_accDescription(args[0], args[1]);
            }

            public int method13(int[] args) {
                return Accessible.this.get_accRole(args[0], args[1]);
            }

            public int method14(int[] args) {
                return Accessible.this.get_accState(args[0], args[1]);
            }

            public int method15(int[] args) {
                return Accessible.this.get_accHelp(args[0], args[1]);
            }

            public int method16(int[] args) {
                return Accessible.this.get_accHelpTopic(args[0], args[1], args[2]);
            }

            public int method17(int[] args) {
                return Accessible.this.get_accKeyboardShortcut(args[0], args[1]);
            }

            public int method18(int[] args) {
                return Accessible.this.get_accFocus(args[0]);
            }

            public int method19(int[] args) {
                return Accessible.this.get_accSelection(args[0]);
            }

            public int method20(int[] args) {
                return Accessible.this.get_accDefaultAction(args[0], args[1]);
            }

            public int method21(int[] args) {
                return Accessible.this.accSelect(args[0], args[1]);
            }

            public int method22(int[] args) {
                return Accessible.this.accLocation(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method23(int[] args) {
                return Accessible.this.accNavigate(args[0], args[1], args[2]);
            }

            public int method24(int[] args) {
                return Accessible.this.accHitTest(args[0], args[1], args[2]);
            }

            public int method25(int[] args) {
                return Accessible.this.accDoDefaultAction(args[0]);
            }

            public int method26(int[] args) {
                return Accessible.this.put_accName(args[0], args[1]);
            }

            public int method27(int[] args) {
                return Accessible.this.put_accValue(args[0], args[1]);
            }

            public int method28(int[] args) {
                return Accessible.this.get_nRelations(args[0]);
            }

            public int method29(int[] args) {
                return Accessible.this.get_relation(args[0], args[1]);
            }

            public int method30(int[] args) {
                return Accessible.this.get_relations(args[0], args[1], args[2]);
            }

            public int method31(int[] args) {
                return Accessible.this.get_role(args[0]);
            }

            public int method32(int[] args) {
                return Accessible.this.scrollTo(args[0]);
            }

            public int method33(int[] args) {
                return Accessible.this.scrollToPoint(args[0], args[1], args[2]);
            }

            public int method34(int[] args) {
                return Accessible.this.get_groupPosition(args[0], args[1], args[2]);
            }

            public int method35(int[] args) {
                return Accessible.this.get_states(args[0]);
            }

            public int method36(int[] args) {
                return Accessible.this.get_extendedRole(args[0]);
            }

            public int method37(int[] args) {
                return Accessible.this.get_localizedExtendedRole(args[0]);
            }

            public int method38(int[] args) {
                return Accessible.this.get_nExtendedStates(args[0]);
            }

            public int method39(int[] args) {
                return Accessible.this.get_extendedStates(args[0], args[1], args[2]);
            }

            public int method40(int[] args) {
                return Accessible.this.get_localizedExtendedStates(args[0], args[1], args[2]);
            }

            public int method41(int[] args) {
                return Accessible.this.get_uniqueID(args[0]);
            }

            public int method42(int[] args) {
                return Accessible.this.get_windowHandle(args[0]);
            }

            public int method43(int[] args) {
                return Accessible.this.get_indexInParent(args[0]);
            }

            public int method44(int[] args) {
                return Accessible.this.get_locale(args[0]);
            }

            public int method45(int[] args) {
                return Accessible.this.get_attributes(args[0]);
            }
        };
        int ppVtable = this.objIAccessible2.ppVtable;
        int[] pVtable = new int[1];
        COM.MoveMemory(pVtable, ppVtable, OS.PTR_SIZEOF);
        int[] funcs = new int[28];
        COM.MoveMemory(funcs, pVtable[0], OS.PTR_SIZEOF * funcs.length);
        funcs[9] = COM.get_accChild_CALLBACK(funcs[9]);
        funcs[10] = COM.get_accName_CALLBACK(funcs[10]);
        funcs[11] = COM.get_accValue_CALLBACK(funcs[11]);
        funcs[12] = COM.get_accDescription_CALLBACK(funcs[12]);
        funcs[13] = COM.get_accRole_CALLBACK(funcs[13]);
        funcs[14] = COM.get_accState_CALLBACK(funcs[14]);
        funcs[15] = COM.get_accHelp_CALLBACK(funcs[15]);
        funcs[16] = COM.get_accHelpTopic_CALLBACK(funcs[16]);
        funcs[17] = COM.get_accKeyboardShortcut_CALLBACK(funcs[17]);
        funcs[20] = COM.get_accDefaultAction_CALLBACK(funcs[20]);
        funcs[21] = COM.accSelect_CALLBACK(funcs[21]);
        funcs[22] = COM.accLocation_CALLBACK(funcs[22]);
        funcs[23] = COM.accNavigate_CALLBACK(funcs[23]);
        funcs[25] = COM.accDoDefaultAction_CALLBACK(funcs[25]);
        funcs[26] = COM.put_accName_CALLBACK(funcs[26]);
        funcs[27] = COM.put_accValue_CALLBACK(funcs[27]);
        COM.MoveMemory(pVtable[0], funcs, OS.PTR_SIZEOF * funcs.length);
    }

    void createIAccessibleAction() {
        int[] nArray = new int[9];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 1;
        nArray[5] = 2;
        nArray[6] = 4;
        nArray[7] = 2;
        nArray[8] = 2;
        this.objIAccessibleAction = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.get_nActions(args[0]);
            }

            public int method4(int[] args) {
                return Accessible.this.doAction(args[0]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_description(args[0], args[1]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_keyBinding(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Accessible.this.get_name(args[0], args[1]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_localizedName(args[0], args[1]);
            }
        };
    }

    void createIAccessibleApplication() {
        int[] nArray = new int[7];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 1;
        nArray[5] = 1;
        nArray[6] = 1;
        this.objIAccessibleApplication = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.get_appName(args[0]);
            }

            public int method4(int[] args) {
                return Accessible.this.get_appVersion(args[0]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_toolkitName(args[0]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_toolkitVersion(args[0]);
            }
        };
    }

    void createIAccessibleEditableText() {
        int[] nArray = new int[10];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 2;
        nArray[5] = 2;
        nArray[6] = 2;
        nArray[7] = 1;
        nArray[8] = 3;
        nArray[9] = 3;
        this.objIAccessibleEditableText = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.copyText(args[0], args[1]);
            }

            public int method4(int[] args) {
                return Accessible.this.deleteText(args[0], args[1]);
            }

            public int method5(int[] args) {
                return Accessible.this.insertText(args[0], args[1]);
            }

            public int method6(int[] args) {
                return Accessible.this.cutText(args[0], args[1]);
            }

            public int method7(int[] args) {
                return Accessible.this.pasteText(args[0]);
            }

            public int method8(int[] args) {
                return Accessible.this.replaceText(args[0], args[1], args[2]);
            }

            public int method9(int[] args) {
                return Accessible.this.setAttributes(args[0], args[1], args[2]);
            }
        };
    }

    void createIAccessibleHyperlink() {
        int[] nArray = new int[14];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 1;
        nArray[5] = 2;
        nArray[6] = 4;
        nArray[7] = 2;
        nArray[8] = 2;
        nArray[9] = 2;
        nArray[10] = 2;
        nArray[11] = 1;
        nArray[12] = 1;
        nArray[13] = 1;
        this.objIAccessibleHyperlink = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.get_nActions(args[0]);
            }

            public int method4(int[] args) {
                return Accessible.this.doAction(args[0]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_description(args[0], args[1]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_keyBinding(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Accessible.this.get_name(args[0], args[1]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_localizedName(args[0], args[1]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_anchor(args[0], args[1]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_anchorTarget(args[0], args[1]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_startIndex(args[0]);
            }

            public int method12(int[] args) {
                return Accessible.this.get_endIndex(args[0]);
            }

            public int method13(int[] args) {
                return Accessible.this.get_valid(args[0]);
            }
        };
    }

    void createIAccessibleHypertext() {
        int[] nArray = new int[25];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 4;
        nArray[5] = 1;
        nArray[6] = 6;
        nArray[7] = 1;
        nArray[8] = 4;
        nArray[9] = 3;
        nArray[10] = 3;
        nArray[11] = 5;
        nArray[12] = 5;
        nArray[13] = 5;
        nArray[14] = 1;
        nArray[15] = 1;
        nArray[16] = 3;
        nArray[17] = 1;
        nArray[18] = 3;
        nArray[19] = 5;
        nArray[20] = 1;
        nArray[21] = 1;
        nArray[22] = 1;
        nArray[23] = 2;
        nArray[24] = 2;
        this.objIAccessibleHypertext = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.addSelection(args[0], args[1]);
            }

            public int method4(int[] args) {
                return Accessible.this.get_attributes(args[0], args[1], args[2], args[3]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_caretOffset(args[0]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_characterExtents(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method7(int[] args) {
                return Accessible.this.get_nSelections(args[0]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_offsetAtPoint(args[0], args[1], args[2], args[3]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_selection(args[0], args[1], args[2]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_text(args[0], args[1], args[2]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_textBeforeOffset(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method12(int[] args) {
                return Accessible.this.get_textAfterOffset(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method13(int[] args) {
                return Accessible.this.get_textAtOffset(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method14(int[] args) {
                return Accessible.this.removeSelection(args[0]);
            }

            public int method15(int[] args) {
                return Accessible.this.setCaretOffset(args[0]);
            }

            public int method16(int[] args) {
                return Accessible.this.setSelection(args[0], args[1], args[2]);
            }

            public int method17(int[] args) {
                return Accessible.this.get_nCharacters(args[0]);
            }

            public int method18(int[] args) {
                return Accessible.this.scrollSubstringTo(args[0], args[1], args[2]);
            }

            public int method19(int[] args) {
                return Accessible.this.scrollSubstringToPoint(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method20(int[] args) {
                return Accessible.this.get_newText(args[0]);
            }

            public int method21(int[] args) {
                return Accessible.this.get_oldText(args[0]);
            }

            public int method22(int[] args) {
                return Accessible.this.get_nHyperlinks(args[0]);
            }

            public int method23(int[] args) {
                return Accessible.this.get_hyperlink(args[0], args[1]);
            }

            public int method24(int[] args) {
                return Accessible.this.get_hyperlinkIndex(args[0], args[1]);
            }
        };
    }

    void createIAccessibleTable2() {
        int[] nArray = new int[23];
        nArray[0] = 2;
        nArray[3] = 3;
        nArray[4] = 1;
        nArray[5] = 2;
        nArray[6] = 1;
        nArray[7] = 1;
        nArray[8] = 1;
        nArray[9] = 1;
        nArray[10] = 1;
        nArray[11] = 2;
        nArray[12] = 2;
        nArray[13] = 2;
        nArray[14] = 2;
        nArray[15] = 1;
        nArray[16] = 2;
        nArray[17] = 2;
        nArray[18] = 1;
        nArray[19] = 1;
        nArray[20] = 1;
        nArray[21] = 1;
        nArray[22] = 1;
        this.objIAccessibleTable2 = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.get_cellAt(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return Accessible.this.get_caption(args[0]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_columnDescription(args[0], args[1]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_nColumns(args[0]);
            }

            public int method7(int[] args) {
                return Accessible.this.get_nRows(args[0]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_nSelectedCells(args[0]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_nSelectedColumns(args[0]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_nSelectedRows(args[0]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_rowDescription(args[0], args[1]);
            }

            public int method12(int[] args) {
                return Accessible.this.get_selectedCells(args[0], args[1]);
            }

            public int method13(int[] args) {
                return Accessible.this.get_selectedColumns(args[0], args[1]);
            }

            public int method14(int[] args) {
                return Accessible.this.get_selectedRows(args[0], args[1]);
            }

            public int method15(int[] args) {
                return Accessible.this.get_summary(args[0]);
            }

            public int method16(int[] args) {
                return Accessible.this.get_isColumnSelected(args[0], args[1]);
            }

            public int method17(int[] args) {
                return Accessible.this.get_isRowSelected(args[0], args[1]);
            }

            public int method18(int[] args) {
                return Accessible.this.selectRow(args[0]);
            }

            public int method19(int[] args) {
                return Accessible.this.selectColumn(args[0]);
            }

            public int method20(int[] args) {
                return Accessible.this.unselectRow(args[0]);
            }

            public int method21(int[] args) {
                return Accessible.this.unselectColumn(args[0]);
            }

            public int method22(int[] args) {
                return Accessible.this.get_modelChange(args[0]);
            }
        };
    }

    void createIAccessibleTableCell() {
        int[] nArray = new int[12];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 2;
        nArray[5] = 1;
        nArray[6] = 1;
        nArray[7] = 2;
        nArray[8] = 1;
        nArray[9] = 1;
        nArray[10] = 5;
        nArray[11] = 1;
        this.objIAccessibleTableCell = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.get_columnExtent(args[0]);
            }

            public int method4(int[] args) {
                return Accessible.this.get_columnHeaderCells(args[0], args[1]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_columnIndex(args[0]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_rowExtent(args[0]);
            }

            public int method7(int[] args) {
                return Accessible.this.get_rowHeaderCells(args[0], args[1]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_rowIndex(args[0]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_isSelected(args[0]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_rowColumnExtents(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_table(args[0]);
            }
        };
    }

    void createIAccessibleText() {
        int[] nArray = new int[22];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 4;
        nArray[5] = 1;
        nArray[6] = 6;
        nArray[7] = 1;
        nArray[8] = 4;
        nArray[9] = 3;
        nArray[10] = 3;
        nArray[11] = 5;
        nArray[12] = 5;
        nArray[13] = 5;
        nArray[14] = 1;
        nArray[15] = 1;
        nArray[16] = 3;
        nArray[17] = 1;
        nArray[18] = 3;
        nArray[19] = 5;
        nArray[20] = 1;
        nArray[21] = 1;
        this.objIAccessibleText = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.addSelection(args[0], args[1]);
            }

            public int method4(int[] args) {
                return Accessible.this.get_attributes(args[0], args[1], args[2], args[3]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_caretOffset(args[0]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_characterExtents(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method7(int[] args) {
                return Accessible.this.get_nSelections(args[0]);
            }

            public int method8(int[] args) {
                return Accessible.this.get_offsetAtPoint(args[0], args[1], args[2], args[3]);
            }

            public int method9(int[] args) {
                return Accessible.this.get_selection(args[0], args[1], args[2]);
            }

            public int method10(int[] args) {
                return Accessible.this.get_text(args[0], args[1], args[2]);
            }

            public int method11(int[] args) {
                return Accessible.this.get_textBeforeOffset(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method12(int[] args) {
                return Accessible.this.get_textAfterOffset(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method13(int[] args) {
                return Accessible.this.get_textAtOffset(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method14(int[] args) {
                return Accessible.this.removeSelection(args[0]);
            }

            public int method15(int[] args) {
                return Accessible.this.setCaretOffset(args[0]);
            }

            public int method16(int[] args) {
                return Accessible.this.setSelection(args[0], args[1], args[2]);
            }

            public int method17(int[] args) {
                return Accessible.this.get_nCharacters(args[0]);
            }

            public int method18(int[] args) {
                return Accessible.this.scrollSubstringTo(args[0], args[1], args[2]);
            }

            public int method19(int[] args) {
                return Accessible.this.scrollSubstringToPoint(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method20(int[] args) {
                return Accessible.this.get_newText(args[0]);
            }

            public int method21(int[] args) {
                return Accessible.this.get_oldText(args[0]);
            }
        };
    }

    void createIAccessibleValue() {
        int[] nArray = new int[7];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 1;
        nArray[5] = 1;
        nArray[6] = 1;
        this.objIAccessibleValue = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.get_currentValue(args[0]);
            }

            public int method4(int[] args) {
                return Accessible.this.setCurrentValue(args[0]);
            }

            public int method5(int[] args) {
                return Accessible.this.get_maximumValue(args[0]);
            }

            public int method6(int[] args) {
                return Accessible.this.get_minimumValue(args[0]);
            }
        };
        int ppVtable = this.objIAccessibleValue.ppVtable;
        int[] pVtable = new int[1];
        COM.MoveMemory(pVtable, ppVtable, OS.PTR_SIZEOF);
        int[] funcs = new int[7];
        COM.MoveMemory(funcs, pVtable[0], OS.PTR_SIZEOF * funcs.length);
        funcs[4] = COM.CALLBACK_setCurrentValue(funcs[4]);
        COM.MoveMemory(pVtable[0], funcs, OS.PTR_SIZEOF * funcs.length);
    }

    void createIEnumVARIANT() {
        int[] nArray = new int[7];
        nArray[0] = 2;
        nArray[3] = 3;
        nArray[4] = 1;
        nArray[6] = 1;
        this.objIEnumVARIANT = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.Next(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return Accessible.this.Skip(args[0]);
            }

            public int method5(int[] args) {
                return Accessible.this.Reset();
            }

            public int method6(int[] args) {
                return Accessible.this.Clone(args[0]);
            }
        };
    }

    void createIServiceProvider() {
        int[] nArray = new int[4];
        nArray[0] = 2;
        nArray[3] = 3;
        this.objIServiceProvider = new COMObject(nArray){

            public int method0(int[] args) {
                return Accessible.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Accessible.this.AddRef();
            }

            public int method2(int[] args) {
                return Accessible.this.Release();
            }

            public int method3(int[] args) {
                return Accessible.this.QueryService(args[0], args[1], args[2]);
            }
        };
    }

    public static Accessible internal_new_Accessible(Control control) {
        return new Accessible(control);
    }

    public void addAccessibleListener(AccessibleListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleListeners.addElement(listener);
    }

    public void addAccessibleControlListener(AccessibleControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleControlListeners.addElement(listener);
    }

    public void addAccessibleTextListener(AccessibleTextListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if (listener instanceof AccessibleTextExtendedListener) {
            this.accessibleTextExtendedListeners.addElement(listener);
        } else {
            this.accessibleTextListeners.addElement(listener);
        }
    }

    public void addAccessibleActionListener(AccessibleActionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleActionListeners.addElement(listener);
    }

    public void addAccessibleEditableTextListener(AccessibleEditableTextListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleEditableTextListeners.addElement(listener);
    }

    public void addAccessibleHyperlinkListener(AccessibleHyperlinkListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleHyperlinkListeners.addElement(listener);
    }

    public void addAccessibleTableListener(AccessibleTableListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleTableListeners.addElement(listener);
    }

    public void addAccessibleTableCellListener(AccessibleTableCellListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleTableCellListeners.addElement(listener);
    }

    public void addAccessibleValueListener(AccessibleValueListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleValueListeners.addElement(listener);
    }

    public void addAccessibleAttributeListener(AccessibleAttributeListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleAttributeListeners.addElement(listener);
    }

    public void addRelation(int type, Accessible target) {
        this.checkWidget();
        if (this.relations[type] == null) {
            this.relations[type] = new Relation(this, type);
        }
        this.relations[type].addTarget(target);
    }

    public void dispose() {
        if (this.parent == null) {
            return;
        }
        this.Release();
        this.parent.children.removeElement(this);
        this.parent = null;
    }

    int getAddress() {
        if (this.objIAccessible == null) {
            this.createIAccessible();
        }
        return this.objIAccessible.getAddress();
    }

    public Control getControl() {
        return this.control;
    }

    public void internal_dispose_Accessible() {
        if (this.iaccessible != null) {
            this.iaccessible.Release();
        }
        this.iaccessible = null;
        this.Release();
        int i = 0;
        while (i < this.children.size()) {
            Accessible child = (Accessible)this.children.elementAt(i);
            child.dispose();
            ++i;
        }
    }

    public int internal_WM_GETOBJECT(int wParam, int lParam) {
        if (this.objIAccessible == null) {
            return 0;
        }
        if (lParam == -4) {
            return COM.LresultFromObject(COM.IIDIAccessible, wParam, this.objIAccessible.getAddress());
        }
        return 0;
    }

    public void removeAccessibleListener(AccessibleListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleListeners.removeElement(listener);
    }

    public void removeAccessibleControlListener(AccessibleControlListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleControlListeners.removeElement(listener);
    }

    public void removeAccessibleTextListener(AccessibleTextListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if (listener instanceof AccessibleTextExtendedListener) {
            this.accessibleTextExtendedListeners.removeElement(listener);
        } else {
            this.accessibleTextListeners.removeElement(listener);
        }
    }

    public void removeAccessibleActionListener(AccessibleActionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleActionListeners.removeElement(listener);
    }

    public void removeAccessibleEditableTextListener(AccessibleEditableTextListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleEditableTextListeners.removeElement(listener);
    }

    public void removeAccessibleHyperlinkListener(AccessibleHyperlinkListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleHyperlinkListeners.removeElement(listener);
    }

    public void removeAccessibleTableListener(AccessibleTableListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleTableListeners.removeElement(listener);
    }

    public void removeAccessibleTableCellListener(AccessibleTableCellListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleTableCellListeners.removeElement(listener);
    }

    public void removeAccessibleValueListener(AccessibleValueListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleValueListeners.removeElement(listener);
    }

    public void removeAccessibleAttributeListener(AccessibleAttributeListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.accessibleAttributeListeners.removeElement(listener);
    }

    public void removeRelation(int type, Accessible target) {
        this.checkWidget();
        Relation relation = this.relations[type];
        if (relation != null) {
            relation.removeTarget(target);
            if (!relation.hasTargets()) {
                this.relations[type].Release();
                this.relations[type] = null;
            }
        }
    }

    public void sendEvent(int event, Object eventData) {
        this.checkWidget();
        if (!UseIA2) {
            return;
        }
        switch (event) {
            case 518: {
                if (!(eventData instanceof int[]) || ((int[])eventData).length != 5) break;
                this.tableChange = (int[])eventData;
                COM.NotifyWinEvent(278, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 524: {
                if (!(eventData instanceof Object[]) || ((Object[])eventData).length != 4) break;
                Object[] data = (Object[])eventData;
                int type = (Integer)data[0];
                switch (type) {
                    case 1: {
                        this.textDeleted = (Object[])eventData;
                        COM.NotifyWinEvent(287, this.control.handle, -4, this.eventChildID());
                        break;
                    }
                    case 0: {
                        this.textInserted = (Object[])eventData;
                        COM.NotifyWinEvent(286, this.control.handle, -4, this.eventChildID());
                    }
                }
                break;
            }
            case 268: {
                if (!(eventData instanceof Integer)) break;
                COM.NotifyWinEvent(268, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32782: {
                COM.NotifyWinEvent(32782, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32778: {
                COM.NotifyWinEvent(32778, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32777: {
                COM.NotifyWinEvent(32777, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32788: {
                COM.NotifyWinEvent(32788, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32779: {
                COM.NotifyWinEvent(32779, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32780: {
                COM.NotifyWinEvent(32780, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 32781: {
                COM.NotifyWinEvent(32781, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 261: {
                COM.NotifyWinEvent(261, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 262: {
                COM.NotifyWinEvent(262, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 263: {
                COM.NotifyWinEvent(263, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 273: {
                COM.NotifyWinEvent(273, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 274: {
                COM.NotifyWinEvent(274, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 256: {
                COM.NotifyWinEvent(257, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 269: {
                COM.NotifyWinEvent(269, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 264: {
                COM.NotifyWinEvent(264, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 265: {
                COM.NotifyWinEvent(265, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 266: {
                COM.NotifyWinEvent(266, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 267: {
                COM.NotifyWinEvent(267, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 271: {
                COM.NotifyWinEvent(271, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 512: {
                COM.NotifyWinEvent(272, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 515: {
                COM.NotifyWinEvent(275, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 516: {
                COM.NotifyWinEvent(276, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 517: {
                COM.NotifyWinEvent(277, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 519: {
                COM.NotifyWinEvent(279, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 520: {
                COM.NotifyWinEvent(280, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 521: {
                COM.NotifyWinEvent(281, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 522: {
                COM.NotifyWinEvent(282, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 283: {
                COM.NotifyWinEvent(283, this.control.handle, -4, this.eventChildID());
                break;
            }
            case 285: {
                COM.NotifyWinEvent(285, this.control.handle, -4, this.eventChildID());
            }
        }
    }

    public void selectionChanged() {
        this.checkWidget();
        COM.NotifyWinEvent(32777, this.control.handle, -4, this.eventChildID());
    }

    public void setFocus(int childID) {
        this.checkWidget();
        int osChildID = childID == -1 ? this.eventChildID() : this.childIDToOs(childID);
        COM.NotifyWinEvent(32773, this.control.handle, -4, osChildID);
    }

    public void textCaretMoved(int index) {
        this.checkWidget();
        COM.NotifyWinEvent(32779, this.control.handle, -8, this.eventChildID());
        if (!UseIA2) {
            return;
        }
        COM.NotifyWinEvent(283, this.control.handle, -4, this.eventChildID());
    }

    public void textChanged(int type, int startIndex, int length) {
        this.checkWidget();
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.start = startIndex;
        event.end = startIndex + length;
        event.count = 0;
        event.type = 5;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getText(event);
            ++i;
        }
        if (event.result != null) {
            Object[] eventData = new Object[]{new Integer(type), new Integer(startIndex), new Integer(startIndex + length), event.result};
            this.sendEvent(524, eventData);
            return;
        }
        COM.NotifyWinEvent(32782, this.control.handle, -4, this.eventChildID());
    }

    public void textSelectionChanged() {
        this.checkWidget();
        COM.NotifyWinEvent(32782, this.control.handle, -4, this.eventChildID());
    }

    int QueryInterface(int iid, int ppvObject) {
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        GUID guid = new GUID();
        COM.MoveMemory(guid, iid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIDispatch) || COM.IsEqualGUID(guid, COM.IIDIAccessible)) {
            if (this.objIAccessible == null) {
                this.createIAccessible();
            }
            COM.MoveMemory(ppvObject, new int[]{this.objIAccessible.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIEnumVARIANT)) {
            if (this.objIEnumVARIANT == null) {
                this.createIEnumVARIANT();
            }
            COM.MoveMemory(ppvObject, new int[]{this.objIEnumVARIANT.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            this.enumIndex = 0;
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIServiceProvider)) {
            if (!UseIA2) {
                return -2147467262;
            }
            if (this.accessibleActionListeners.size() > 0 || this.accessibleAttributeListeners.size() > 0 || this.accessibleHyperlinkListeners.size() > 0 || this.accessibleTableListeners.size() > 0 || this.accessibleTableCellListeners.size() > 0 || this.accessibleTextExtendedListeners.size() > 0 || this.accessibleValueListeners.size() > 0 || this.getRelationCount() > 0) {
                if (this.objIServiceProvider == null) {
                    this.createIServiceProvider();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIServiceProvider.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        int code = this.queryAccessible2Interfaces(guid, ppvObject);
        if (code != 1) {
            return code;
        }
        if (this.iaccessible != null) {
            int[] ppv = new int[1];
            code = this.iaccessible.QueryInterface(guid, ppv);
            COM.MoveMemory(ppvObject, ppv, OS.PTR_SIZEOF);
            return code;
        }
        return -2147467262;
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            if (this.objIAccessible != null) {
                this.objIAccessible.dispose();
            }
            this.objIAccessible = null;
            if (this.objIEnumVARIANT != null) {
                this.objIEnumVARIANT.dispose();
            }
            this.objIEnumVARIANT = null;
            if (this.objIServiceProvider != null) {
                this.objIServiceProvider.dispose();
            }
            this.objIServiceProvider = null;
            if (this.objIAccessible2 != null) {
                this.objIAccessible2.dispose();
            }
            this.objIAccessible2 = null;
            if (this.objIAccessibleAction != null) {
                this.objIAccessibleAction.dispose();
            }
            this.objIAccessibleAction = null;
            if (this.objIAccessibleApplication != null) {
                this.objIAccessibleApplication.dispose();
            }
            this.objIAccessibleApplication = null;
            if (this.objIAccessibleEditableText != null) {
                this.objIAccessibleEditableText.dispose();
            }
            this.objIAccessibleEditableText = null;
            if (this.objIAccessibleHyperlink != null) {
                this.objIAccessibleHyperlink.dispose();
            }
            this.objIAccessibleHyperlink = null;
            if (this.objIAccessibleHypertext != null) {
                this.objIAccessibleHypertext.dispose();
            }
            this.objIAccessibleHypertext = null;
            if (this.objIAccessibleTable2 != null) {
                this.objIAccessibleTable2.dispose();
            }
            this.objIAccessibleTable2 = null;
            if (this.objIAccessibleTableCell != null) {
                this.objIAccessibleTableCell.dispose();
            }
            this.objIAccessibleTableCell = null;
            if (this.objIAccessibleText != null) {
                this.objIAccessibleText.dispose();
            }
            this.objIAccessibleText = null;
            if (this.objIAccessibleValue != null) {
                this.objIAccessibleValue.dispose();
            }
            this.objIAccessibleValue = null;
            int i = 0;
            while (i < this.relations.length) {
                if (this.relations[i] != null) {
                    this.relations[i].Release();
                }
                ++i;
            }
        }
        return this.refCount;
    }

    int QueryService(int guidService, int riid, int ppvObject) {
        int[] ppv;
        int code;
        int code2;
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        GUID service = new GUID();
        COM.MoveMemory(service, guidService, GUID.sizeof);
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(service, COM.IIDIAccessible)) {
            if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIDispatch) | COM.IsEqualGUID(guid, COM.IIDIAccessible)) {
                if (this.objIAccessible == null) {
                    this.createIAccessible();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessible.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            code2 = this.queryAccessible2Interfaces(guid, ppvObject);
            if (code2 != 1) {
                return code2;
            }
        }
        if (COM.IsEqualGUID(service, COM.IIDIAccessible2) && (code2 = this.queryAccessible2Interfaces(guid, ppvObject)) != 1) {
            return code2;
        }
        if (this.iaccessible != null && (code = this.iaccessible.QueryInterface(COM.IIDIServiceProvider, ppv = new int[1])) == 0) {
            IServiceProvider iserviceProvider = new IServiceProvider(ppv[0]);
            int[] ppvx = new int[1];
            code = iserviceProvider.QueryService(service, guid, ppvx);
            COM.MoveMemory(ppvObject, ppvx, OS.PTR_SIZEOF);
            return code;
        }
        return -2147467262;
    }

    int queryAccessible2Interfaces(GUID guid, int ppvObject) {
        if (COM.IsEqualGUID(guid, COM.IIDIAccessible2)) {
            if (this.accessibleActionListeners.size() > 0 || this.accessibleAttributeListeners.size() > 0 || this.accessibleHyperlinkListeners.size() > 0 || this.accessibleTableListeners.size() > 0 || this.accessibleTableCellListeners.size() > 0 || this.accessibleTextExtendedListeners.size() > 0 || this.accessibleValueListeners.size() > 0 || this.getRelationCount() > 0) {
                if (this.objIAccessible2 == null) {
                    this.createIAccessible2();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessible2.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleAction)) {
            if (this.accessibleActionListeners.size() > 0) {
                if (this.objIAccessibleAction == null) {
                    this.createIAccessibleAction();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleAction.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleApplication)) {
            if (this.objIAccessibleApplication == null) {
                this.createIAccessibleApplication();
            }
            COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleApplication.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleComponent)) {
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleEditableText)) {
            if (this.accessibleEditableTextListeners.size() > 0) {
                if (this.objIAccessibleEditableText == null) {
                    this.createIAccessibleEditableText();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleEditableText.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleHyperlink)) {
            if (this.accessibleHyperlinkListeners.size() > 0) {
                if (this.objIAccessibleHyperlink == null) {
                    this.createIAccessibleHyperlink();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleHyperlink.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleHypertext)) {
            if (this.accessibleTextExtendedListeners.size() > 0) {
                if (this.objIAccessibleHypertext == null) {
                    this.createIAccessibleHypertext();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleHypertext.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleImage)) {
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleTable)) {
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleTable2)) {
            if (this.accessibleTableListeners.size() > 0) {
                if (this.objIAccessibleTable2 == null) {
                    this.createIAccessibleTable2();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleTable2.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleTableCell)) {
            if (this.accessibleTableCellListeners.size() > 0) {
                if (this.objIAccessibleTableCell == null) {
                    this.createIAccessibleTableCell();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleTableCell.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleText)) {
            if (this.accessibleTextExtendedListeners.size() > 0) {
                if (this.objIAccessibleText == null) {
                    this.createIAccessibleText();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleText.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAccessibleValue)) {
            if (this.accessibleValueListeners.size() > 0) {
                if (this.objIAccessibleValue == null) {
                    this.createIAccessibleValue();
                }
                COM.MoveMemory(ppvObject, new int[]{this.objIAccessibleValue.getAddress()}, OS.PTR_SIZEOF);
                this.AddRef();
                return 0;
            }
            return -2147467262;
        }
        return 1;
    }

    int accDoDefaultAction(int varChild) {
        if (this.accessibleActionListeners.size() > 0) {
            VARIANT v = this.getVARIANT(varChild);
            if (v.vt != 3) {
                return -2147024809;
            }
            if (v.lVal == 0) {
                return this.doAction(0);
            }
        }
        int code = -2147352573;
        if (this.iaccessible != null && (code = this.iaccessible.accDoDefaultAction(varChild)) == -2147024809) {
            code = -2147352573;
        }
        return code;
    }

    int accHitTest(int xLeft, int yTop, int pvarChild) {
        int osChild = -2;
        int osChildObject = 0;
        if (this.iaccessible != null) {
            int code = this.iaccessible.accHitTest(xLeft, yTop, pvarChild);
            if (code == 0) {
                VARIANT v = this.getVARIANT(pvarChild);
                if (v.vt == 3) {
                    osChild = v.lVal;
                } else if (v.vt == 9) {
                    osChildObject = v.lVal;
                }
            }
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = osChild == -2 ? -2 : this.osToChildID(osChild);
        event.x = xLeft;
        event.y = yTop;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getChildAtPoint(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible != null) {
            accessible.AddRef();
            this.setPtrVARIANT(pvarChild, (short)9, accessible.getAddress());
            return 0;
        }
        int childID = event.childID;
        if (childID == -2) {
            if (osChildObject != 0) {
                return 0;
            }
            this.setIntVARIANT(pvarChild, (short)0, 0);
            return 1;
        }
        this.setIntVARIANT(pvarChild, (short)3, this.childIDToOs(childID));
        return 0;
    }

    int accLocation(int pxLeft, int pyTop, int pcxWidth, int pcyHeight, int varChild) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int osLeft = 0;
        int osTop = 0;
        int osWidth = 0;
        int osHeight = 0;
        if (this.iaccessible != null) {
            int code = this.iaccessible.accLocation(pxLeft, pyTop, pcxWidth, pcyHeight, varChild);
            if (code == -2147024809) {
                code = -2147352573;
            }
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
            if (code == 0) {
                int[] pLeft = new int[1];
                int[] pTop = new int[1];
                int[] pWidth = new int[1];
                int[] pHeight = new int[1];
                COM.MoveMemory(pLeft, pxLeft, 4);
                COM.MoveMemory(pTop, pyTop, 4);
                COM.MoveMemory(pWidth, pcxWidth, 4);
                COM.MoveMemory(pHeight, pcyHeight, 4);
                osLeft = pLeft[0];
                osTop = pTop[0];
                osWidth = pWidth[0];
                osHeight = pHeight[0];
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.x = osLeft;
        event.y = osTop;
        event.width = osWidth;
        event.height = osHeight;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getLocation(event);
            ++i;
        }
        OS.MoveMemory(pxLeft, new int[]{event.x}, 4);
        OS.MoveMemory(pyTop, new int[]{event.y}, 4);
        OS.MoveMemory(pcxWidth, new int[]{event.width}, 4);
        OS.MoveMemory(pcyHeight, new int[]{event.height}, 4);
        return 0;
    }

    int accNavigate(int navDir, int varStart, int pvarEndUpAt) {
        int code = -2147352573;
        if (this.iaccessible != null && (code = this.iaccessible.accNavigate(navDir, varStart, pvarEndUpAt)) == -2147024809) {
            code = -2147352573;
        }
        return code;
    }

    int accSelect(int flagsSelect, int varChild) {
        int code = -2147352573;
        if (this.iaccessible != null && (code = this.iaccessible.accSelect(flagsSelect, varChild)) == -2147024809) {
            code = -2147352573;
        }
        return code;
    }

    int get_accChild(int varChild, int ppdispChild) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        if (v.lVal == 0) {
            this.AddRef();
            COM.MoveMemory(ppdispChild, new int[]{this.getAddress()}, OS.PTR_SIZEOF);
            return 0;
        }
        final int childID = this.osToChildID(v.lVal);
        int code = 1;
        Accessible osAccessible = null;
        if (this.iaccessible != null) {
            ToolBar toolBar;
            ToolItem item;
            code = this.iaccessible.get_accChild(varChild, ppdispChild);
            if (code == -2147024809) {
                code = 1;
            }
            if (code == 0 && this.control instanceof ToolBar && (item = (toolBar = (ToolBar)this.control).getItem(childID)) != null && (item.getStyle() & 4) != 0) {
                int[] addr = new int[1];
                COM.MoveMemory(addr, ppdispChild, OS.PTR_SIZEOF);
                boolean found = false;
                int i = 0;
                while (i < this.children.size()) {
                    Accessible accChild = (Accessible)this.children.elementAt(i);
                    if (accChild.item == item) {
                        accChild.dispose();
                        accChild.item = null;
                        found = true;
                        break;
                    }
                    ++i;
                }
                osAccessible = new Accessible(this, addr[0]);
                osAccessible.item = item;
                if (!found) {
                    item.addListener(12, new Listener(){

                        public void handleEvent(Event e) {
                            int i = 0;
                            while (i < Accessible.this.children.size()) {
                                Accessible accChild = (Accessible)Accessible.this.children.elementAt(i);
                                if (accChild.item == item) {
                                    accChild.dispose();
                                }
                                ++i;
                            }
                        }
                    });
                }
                osAccessible.addAccessibleListener(new AccessibleAdapter(){

                    public void getName(AccessibleEvent e) {
                        if (e.childID == -1) {
                            AccessibleEvent event = new AccessibleEvent(Accessible.this);
                            event.childID = childID;
                            int i = 0;
                            while (i < Accessible.this.accessibleListeners.size()) {
                                AccessibleListener listener = (AccessibleListener)Accessible.this.accessibleListeners.elementAt(i);
                                listener.getName(event);
                                ++i;
                            }
                            e.result = event.result;
                        }
                    }
                });
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = childID;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getChild(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible == null) {
            accessible = osAccessible;
        }
        if (accessible != null) {
            accessible.AddRef();
            COM.MoveMemory(ppdispChild, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
            return 0;
        }
        return code;
    }

    int get_accChildCount(int pcountChildren) {
        int osChildCount = 0;
        if (this.iaccessible != null) {
            int code = this.iaccessible.get_accChildCount(pcountChildren);
            if (code == 0) {
                int[] pChildCount = new int[1];
                COM.MoveMemory(pChildCount, pcountChildren, 4);
                osChildCount = pChildCount[0];
            }
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = -1;
        event.detail = osChildCount;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getChildCount(event);
            ++i;
        }
        COM.MoveMemory(pcountChildren, new int[]{event.detail}, 4);
        return 0;
    }

    int get_accDefaultAction(int varChild, int pszDefaultAction) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = -2147352573;
        String osDefaultAction = null;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accDefaultAction(varChild, pszDefaultAction);
            if (code == -2147024809) {
                code = 1;
            }
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
            if (code == 0) {
                int[] pDefaultAction = new int[1];
                COM.MoveMemory(pDefaultAction, pszDefaultAction, OS.PTR_SIZEOF);
                int size = COM.SysStringByteLen(pDefaultAction[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, pDefaultAction[0], size);
                    osDefaultAction = new String(buffer);
                }
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.result = osDefaultAction;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getDefaultAction(event);
            ++i;
        }
        if ((event.result == null || event.result.length() == 0) && v.lVal == 0) {
            code = this.get_name(0, pszDefaultAction);
        }
        if (event.result == null) {
            return code;
        }
        if (event.result.length() == 0) {
            return 1;
        }
        this.setString(pszDefaultAction, event.result);
        return 0;
    }

    int get_accDescription(int varChild, int pszDescription) {
        Tree tree;
        int columnCount;
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = -2147352573;
        String osDescription = null;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accDescription(varChild, pszDescription);
            if (code == -2147024809) {
                code = 1;
            }
            if (this.accessibleListeners.size() == 0 && !(this.control instanceof Tree)) {
                return code;
            }
            if (code == 0) {
                int[] pDescription = new int[1];
                COM.MoveMemory(pDescription, pszDescription, OS.PTR_SIZEOF);
                int size = COM.SysStringByteLen(pDescription[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, pDescription[0], size);
                    osDescription = new String(buffer);
                }
            }
        }
        AccessibleEvent event = new AccessibleEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.result = osDescription;
        if (v.lVal != 0 && this.control instanceof Tree && (columnCount = (tree = (Tree)this.control).getColumnCount()) > 1) {
            int hwnd = this.control.handle;
            int hItem = 0;
            hItem = OS.COMCTL32_MAJOR >= 6 ? OS.SendMessage(hwnd, 4394, v.lVal, 0) : v.lVal;
            Widget widget = tree.getDisplay().findWidget(hwnd, hItem);
            event.result = "";
            if (widget != null && widget instanceof TreeItem) {
                TreeItem item = (TreeItem)widget;
                int i = 1;
                while (i < columnCount) {
                    event.result = String.valueOf(event.result) + tree.getColumn(i).getText() + ": " + item.getText(i);
                    if (i + 1 < columnCount) {
                        event.result = String.valueOf(event.result) + ", ";
                    }
                    ++i;
                }
            }
        }
        int i = 0;
        while (i < this.accessibleListeners.size()) {
            AccessibleListener listener = (AccessibleListener)this.accessibleListeners.elementAt(i);
            listener.getDescription(event);
            ++i;
        }
        if (event.result == null) {
            return code;
        }
        if (event.result.length() == 0) {
            return 1;
        }
        this.setString(pszDescription, event.result);
        return 0;
    }

    int get_accFocus(int pvarChild) {
        int osChild = -2;
        if (this.iaccessible != null) {
            int code = this.iaccessible.get_accFocus(pvarChild);
            if (code == 0) {
                VARIANT v = this.getVARIANT(pvarChild);
                if (v.vt == 3) {
                    osChild = v.lVal;
                }
            }
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = osChild == -2 ? -2 : this.osToChildID(osChild);
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getFocus(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible != null) {
            accessible.AddRef();
            this.setPtrVARIANT(pvarChild, (short)9, accessible.getAddress());
            return 0;
        }
        int childID = event.childID;
        if (childID == -2) {
            this.setIntVARIANT(pvarChild, (short)0, 0);
            return 1;
        }
        if (childID == -1) {
            this.AddRef();
            this.setIntVARIANT(pvarChild, (short)3, 0);
            return 0;
        }
        this.setIntVARIANT(pvarChild, (short)3, this.childIDToOs(childID));
        return 0;
    }

    int get_accHelp(int varChild, int pszHelp) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = -2147352573;
        String osHelp = null;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accHelp(varChild, pszHelp);
            if (code == -2147024809) {
                code = 1;
            }
            if (this.accessibleListeners.size() == 0) {
                return code;
            }
            if (code == 0) {
                int[] pHelp = new int[1];
                COM.MoveMemory(pHelp, pszHelp, OS.PTR_SIZEOF);
                int size = COM.SysStringByteLen(pHelp[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, pHelp[0], size);
                    osHelp = new String(buffer);
                }
            }
        }
        AccessibleEvent event = new AccessibleEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.result = osHelp;
        int i = 0;
        while (i < this.accessibleListeners.size()) {
            AccessibleListener listener = (AccessibleListener)this.accessibleListeners.elementAt(i);
            listener.getHelp(event);
            ++i;
        }
        if (event.result == null) {
            return code;
        }
        if (event.result.length() == 0) {
            return 1;
        }
        this.setString(pszHelp, event.result);
        return 0;
    }

    int get_accHelpTopic(int pszHelpFile, int varChild, int pidTopic) {
        int code = -2147352573;
        if (this.iaccessible != null && (code = this.iaccessible.get_accHelpTopic(pszHelpFile, varChild, pidTopic)) == -2147024809) {
            code = -2147352573;
        }
        return code;
    }

    int get_accKeyboardShortcut(int varChild, int pszKeyboardShortcut) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = -2147352573;
        String osKeyboardShortcut = null;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accKeyboardShortcut(varChild, pszKeyboardShortcut);
            if (code == -2147024809) {
                code = 1;
            }
            if (this.accessibleListeners.size() == 0) {
                return code;
            }
            if (code == 0) {
                int[] pKeyboardShortcut = new int[1];
                COM.MoveMemory(pKeyboardShortcut, pszKeyboardShortcut, OS.PTR_SIZEOF);
                int size = COM.SysStringByteLen(pKeyboardShortcut[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, pKeyboardShortcut[0], size);
                    osKeyboardShortcut = new String(buffer);
                }
            }
        }
        AccessibleEvent event = new AccessibleEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.result = osKeyboardShortcut;
        int i = 0;
        while (i < this.accessibleListeners.size()) {
            AccessibleListener listener = (AccessibleListener)this.accessibleListeners.elementAt(i);
            listener.getKeyboardShortcut(event);
            ++i;
        }
        if (event.result == null) {
            return code;
        }
        if (event.result.length() == 0) {
            return 1;
        }
        this.setString(pszKeyboardShortcut, event.result);
        return 0;
    }

    int get_accName(int varChild, int pszName) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = 1;
        String osName = null;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accName(varChild, pszName);
            if (code == 0) {
                int[] pName = new int[1];
                COM.MoveMemory(pName, pszName, OS.PTR_SIZEOF);
                int size = COM.SysStringByteLen(pName[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, pName[0], size);
                    osName = new String(buffer);
                }
            }
            if (code == -2147024809) {
                code = 1;
            }
            if (this.accessibleListeners.size() == 0) {
                return code;
            }
        }
        AccessibleEvent event = new AccessibleEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.result = osName;
        int i = 0;
        while (i < this.accessibleListeners.size()) {
            AccessibleListener listener = (AccessibleListener)this.accessibleListeners.elementAt(i);
            listener.getName(event);
            ++i;
        }
        if (event.result == null) {
            return code;
        }
        if (event.result.length() == 0) {
            return 1;
        }
        this.setString(pszName, event.result);
        return 0;
    }

    int get_accParent(int ppdispParent) {
        int code = -2147352573;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accParent(ppdispParent);
        }
        if (this.parent != null) {
            this.parent.AddRef();
            COM.MoveMemory(ppdispParent, new int[]{this.parent.getAddress()}, OS.PTR_SIZEOF);
            code = 0;
        }
        return code;
    }

    int get_accRole(int varChild, int pvarRole) {
        int code;
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int osRole = 10;
        if (this.iaccessible != null && (code = this.iaccessible.get_accRole(varChild, pvarRole)) == 0) {
            VARIANT v2 = this.getVARIANT(pvarRole);
            if (v2.vt == 3) {
                osRole = v2.lVal;
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.detail = this.osToRole(osRole);
        if ((this.control instanceof Tree || this.control instanceof Table) && v.lVal != 0 && (this.control.getStyle() & 0x20) != 0) {
            event.detail = 44;
        }
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getRole(event);
            ++i;
        }
        this.setIntVARIANT(pvarRole, (short)3, this.roleToOs(event.detail));
        return 0;
    }

    int get_accSelection(int pvarChildren) {
        int osChild = -2;
        int osChildObject = 0;
        if (this.iaccessible != null) {
            int code = this.iaccessible.get_accSelection(pvarChildren);
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
            if (code == 0) {
                VARIANT v = this.getVARIANT(pvarChildren);
                if (v.vt == 3) {
                    osChild = this.osToChildID(v.lVal);
                } else if (v.vt == 9) {
                    osChildObject = v.lVal;
                } else if (v.vt == 13) {
                    osChild = -3;
                }
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = osChild;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getSelection(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible != null) {
            accessible.AddRef();
            this.setPtrVARIANT(pvarChildren, (short)9, accessible.getAddress());
            return 0;
        }
        int childID = event.childID;
        if (childID == -2) {
            if (osChildObject != 0) {
                return 0;
            }
            this.setIntVARIANT(pvarChildren, (short)0, 0);
            return 1;
        }
        if (childID == -3) {
            return 0;
        }
        if (childID == -1) {
            this.AddRef();
            this.setPtrVARIANT(pvarChildren, (short)9, this.getAddress());
            return 0;
        }
        this.setIntVARIANT(pvarChildren, (short)3, this.childIDToOs(childID));
        return 0;
    }

    int get_accState(int varChild, int pvarState) {
        int code;
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int osState = 0;
        if (this.iaccessible != null && (code = this.iaccessible.get_accState(varChild, pvarState)) == 0) {
            VARIANT v2 = this.getVARIANT(pvarState);
            if (v2.vt == 3) {
                osState = v2.lVal;
            }
        }
        boolean grayed = false;
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.detail = this.osToState(osState);
        if (v.lVal != 0) {
            if (this.control instanceof Tree && (this.control.getStyle() & 0x20) != 0) {
                boolean checked;
                int hwnd = this.control.handle;
                TVITEM tvItem = new TVITEM();
                tvItem.mask = 24;
                tvItem.stateMask = 61440;
                tvItem.hItem = OS.COMCTL32_MAJOR >= 6 ? OS.SendMessage(hwnd, 4394, v.lVal, 0) : v.lVal;
                int result = OS.SendMessage(hwnd, OS.TVM_GETITEM, 0, tvItem);
                boolean bl = checked = result != 0 && (tvItem.state >> 12 & 1) == 0;
                if (checked) {
                    event.detail |= 0x10;
                }
                grayed = tvItem.state >> 12 > 2;
            } else if (this.control instanceof Table && (this.control.getStyle() & 0x20) != 0) {
                Table table = (Table)this.control;
                int index = event.childID;
                if (index >= 0 && index < table.getItemCount()) {
                    TableItem item = table.getItem(index);
                    if (item.getChecked()) {
                        event.detail |= 0x10;
                    }
                    if (item.getGrayed()) {
                        grayed = true;
                    }
                }
            }
        }
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getState(event);
            ++i;
        }
        int state = this.stateToOs(event.detail);
        if ((state & 0x10) != 0 && grayed) {
            state &= 0xFFFFFFEF;
            state |= 0x20;
        }
        this.setIntVARIANT(pvarState, (short)3, state);
        return 0;
    }

    int get_accValue(int varChild, int pszValue) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = -2147352573;
        String osValue = null;
        if (this.iaccessible != null) {
            code = this.iaccessible.get_accValue(varChild, pszValue);
            if (code == 0) {
                int[] pValue = new int[1];
                COM.MoveMemory(pValue, pszValue, OS.PTR_SIZEOF);
                int size = COM.SysStringByteLen(pValue[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, pValue[0], size);
                    osValue = new String(buffer);
                }
            }
            if (code == -2147024809) {
                code = -2147352573;
            }
            if (this.accessibleControlListeners.size() == 0) {
                return code;
            }
        }
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = this.osToChildID(v.lVal);
        event.result = osValue;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getValue(event);
            ++i;
        }
        if (event.result == null) {
            return code;
        }
        this.setString(pszValue, event.result);
        return 0;
    }

    int put_accName(int varChild, int szName) {
        return -2147467263;
    }

    int put_accValue(int varChild, int szValue) {
        VARIANT v = this.getVARIANT(varChild);
        if (v.vt != 3) {
            return -2147024809;
        }
        int code = -2147352573;
        if (v.lVal == 0 && this.accessibleEditableTextListeners.size() > 0) {
            AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
            event.start = 0;
            event.end = this.getCharacterCount();
            if (event.end >= 0) {
                int size = COM.SysStringByteLen(szValue);
                char[] buffer = new char[(size + 1) / 2];
                OS.MoveMemory(buffer, szValue, size);
                event.string = new String(buffer);
                int i = 0;
                while (i < this.accessibleEditableTextListeners.size()) {
                    AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
                    listener.replaceText(event);
                    ++i;
                }
                if (event.result != null && event.result.equals("OK")) {
                    code = 0;
                }
            }
        }
        if (code != 0 && this.iaccessible != null && (code = this.iaccessible.put_accValue(varChild, szValue)) == -2147024809) {
            code = -2147352573;
        }
        return code;
    }

    int Next(int celt, int rgvar, int pceltFetched) {
        int i;
        if (this.iaccessible != null && this.accessibleControlListeners.size() == 0) {
            int[] ppvObject = new int[1];
            int code = this.iaccessible.QueryInterface(COM.IIDIEnumVARIANT, ppvObject);
            if (code != 0) {
                return code;
            }
            IEnumVARIANT ienumvariant = new IEnumVARIANT(ppvObject[0]);
            int[] celtFetched = new int[1];
            code = ienumvariant.Next(celt, rgvar, celtFetched);
            ienumvariant.Release();
            COM.MoveMemory(pceltFetched, celtFetched, 4);
            return code;
        }
        if (rgvar == 0) {
            return -2147024809;
        }
        if (pceltFetched == 0 && celt != 1) {
            return -2147024809;
        }
        if (this.enumIndex == 0) {
            AccessibleControlEvent event = new AccessibleControlEvent(this);
            event.childID = -1;
            i = 0;
            while (i < this.accessibleControlListeners.size()) {
                AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
                listener.getChildren(event);
                ++i;
            }
            this.variants = event.children;
        }
        Object[] nextItems = null;
        if (this.variants != null && celt >= 1) {
            int endIndex = this.enumIndex + celt - 1;
            if (endIndex > this.variants.length - 1) {
                endIndex = this.variants.length - 1;
            }
            if (this.enumIndex <= endIndex) {
                nextItems = new Object[endIndex - this.enumIndex + 1];
                int i2 = 0;
                while (i2 < nextItems.length) {
                    Object child = this.variants[this.enumIndex];
                    nextItems[i2] = child instanceof Integer ? new Integer(this.childIDToOs((Integer)child)) : child;
                    ++this.enumIndex;
                    ++i2;
                }
            }
        }
        if (nextItems != null) {
            i = 0;
            while (i < nextItems.length) {
                Object nextItem = nextItems[i];
                if (nextItem instanceof Integer) {
                    int item = (Integer)nextItem;
                    this.setIntVARIANT(rgvar + i * VARIANT.sizeof, (short)3, item);
                } else {
                    Accessible accessible = (Accessible)nextItem;
                    accessible.AddRef();
                    this.setPtrVARIANT(rgvar + i * VARIANT.sizeof, (short)9, accessible.getAddress());
                }
                ++i;
            }
            if (pceltFetched != 0) {
                COM.MoveMemory(pceltFetched, new int[]{nextItems.length}, 4);
            }
            if (nextItems.length == celt) {
                return 0;
            }
        } else if (pceltFetched != 0) {
            COM.MoveMemory(pceltFetched, new int[1], 4);
        }
        return 1;
    }

    int Skip(int celt) {
        if (this.iaccessible != null && this.accessibleControlListeners.size() == 0) {
            int[] ppvObject = new int[1];
            int code = this.iaccessible.QueryInterface(COM.IIDIEnumVARIANT, ppvObject);
            if (code != 0) {
                return code;
            }
            IEnumVARIANT ienumvariant = new IEnumVARIANT(ppvObject[0]);
            code = ienumvariant.Skip(celt);
            ienumvariant.Release();
            return code;
        }
        if (celt < 1) {
            return -2147024809;
        }
        this.enumIndex += celt;
        if (this.enumIndex > this.variants.length - 1) {
            this.enumIndex = this.variants.length - 1;
            return 1;
        }
        return 0;
    }

    int Reset() {
        if (this.iaccessible != null && this.accessibleControlListeners.size() == 0) {
            int[] ppvObject = new int[1];
            int code = this.iaccessible.QueryInterface(COM.IIDIEnumVARIANT, ppvObject);
            if (code != 0) {
                return code;
            }
            IEnumVARIANT ienumvariant = new IEnumVARIANT(ppvObject[0]);
            code = ienumvariant.Reset();
            ienumvariant.Release();
            return code;
        }
        this.enumIndex = 0;
        return 0;
    }

    int Clone(int ppEnum) {
        if (this.iaccessible != null && this.accessibleControlListeners.size() == 0) {
            int[] ppvObject = new int[1];
            int code = this.iaccessible.QueryInterface(COM.IIDIEnumVARIANT, ppvObject);
            if (code != 0) {
                return code;
            }
            IEnumVARIANT ienumvariant = new IEnumVARIANT(ppvObject[0]);
            int[] pEnum = new int[1];
            code = ienumvariant.Clone(pEnum);
            ienumvariant.Release();
            COM.MoveMemory(ppEnum, pEnum, OS.PTR_SIZEOF);
            return code;
        }
        if (ppEnum == 0) {
            return -2147024809;
        }
        COM.MoveMemory(ppEnum, new int[]{this.objIEnumVARIANT.getAddress()}, OS.PTR_SIZEOF);
        this.AddRef();
        return 0;
    }

    int get_nRelations(int pNRelations) {
        int count = this.getRelationCount();
        COM.MoveMemory(pNRelations, new int[]{count}, 4);
        return 0;
    }

    int get_relation(int relationIndex, int ppRelation) {
        int i = -1;
        int type = 0;
        while (type < 15) {
            Relation relation = this.relations[type];
            if (relation != null) {
                ++i;
            }
            if (i == relationIndex) {
                relation.AddRef();
                COM.MoveMemory(ppRelation, new int[]{relation.getAddress()}, OS.PTR_SIZEOF);
                return 0;
            }
            ++type;
        }
        return -2147024809;
    }

    int get_relations(int maxRelations, int ppRelations, int pNRelations) {
        int count = 0;
        int type = 0;
        while (type < 15) {
            if (count == maxRelations) break;
            Relation relation = this.relations[type];
            if (relation != null) {
                relation.AddRef();
                COM.MoveMemory(ppRelations + count * OS.PTR_SIZEOF, new int[]{relation.getAddress()}, OS.PTR_SIZEOF);
                ++count;
            }
            ++type;
        }
        COM.MoveMemory(pNRelations, new int[]{count}, 4);
        return 0;
    }

    int get_role(int pRole) {
        int role = this.getRole();
        if (role == 0) {
            role = this.getDefaultRole();
        }
        COM.MoveMemory(pRole, new int[]{role}, 4);
        return 0;
    }

    int scrollTo(int scrollType) {
        if (scrollType < 4 || scrollType > 6) {
            return -2147024809;
        }
        return -2147467263;
    }

    int scrollToPoint(int coordinateType, int x, int y) {
        if (coordinateType != 0) {
            return -2147024809;
        }
        return -2147467263;
    }

    int get_groupPosition(int pGroupLevel, int pSimilarItemsInGroup, int pPositionInGroup) {
        int groupLevel = 0;
        COM.MoveMemory(pGroupLevel, new int[]{groupLevel}, 4);
        int similarItemsInGroup = 0;
        COM.MoveMemory(pSimilarItemsInGroup, new int[]{similarItemsInGroup}, 4);
        int positionInGroup = 0;
        COM.MoveMemory(pPositionInGroup, new int[]{positionInGroup}, 4);
        if (groupLevel == 0 && similarItemsInGroup == 0 && positionInGroup == 0) {
            return 1;
        }
        return 0;
    }

    int get_states(int pStates) {
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = -1;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getState(event);
            ++i;
        }
        int states = event.detail;
        int ia2States = 0;
        if ((states & 0x4000000) != 0) {
            ia2States |= 1;
        }
        if ((states & 0x8000000) != 0) {
            ia2States |= 0x2000;
        }
        if ((states & 0x10000000) != 0) {
            ia2States |= 0x200;
        }
        if ((states & 0x2000000) != 0) {
            ia2States |= 0x800;
        }
        if ((states & 0x20000000) != 0) {
            ia2States |= 0x40;
        }
        if ((states & 0x40000000) != 0) {
            ia2States |= 0x8000;
        }
        if (this.getRole() == 42 && this.accessibleTextExtendedListeners.size() > 0) {
            ia2States |= 8;
        }
        COM.MoveMemory(pStates, new int[]{ia2States}, 4);
        return 0;
    }

    int get_extendedRole(int pbstrExtendedRole) {
        this.setString(pbstrExtendedRole, null);
        return 1;
    }

    int get_localizedExtendedRole(int pbstrLocalizedExtendedRole) {
        this.setString(pbstrLocalizedExtendedRole, null);
        return 1;
    }

    int get_nExtendedStates(int pNExtendedStates) {
        COM.MoveMemory(pNExtendedStates, new int[1], 4);
        return 0;
    }

    int get_extendedStates(int maxExtendedStates, int ppbstrExtendedStates, int pNExtendedStates) {
        this.setString(ppbstrExtendedStates, null);
        COM.MoveMemory(pNExtendedStates, new int[1], 4);
        return 1;
    }

    int get_localizedExtendedStates(int maxLocalizedExtendedStates, int ppbstrLocalizedExtendedStates, int pNLocalizedExtendedStates) {
        this.setString(ppbstrLocalizedExtendedStates, null);
        COM.MoveMemory(pNLocalizedExtendedStates, new int[1], 4);
        return 1;
    }

    int get_uniqueID(int pUniqueID) {
        if (this.uniqueID == -1) {
            this.uniqueID = UniqueID--;
        }
        COM.MoveMemory(pUniqueID, new int[]{this.uniqueID}, 4);
        return 0;
    }

    int get_windowHandle(int pWindowHandle) {
        COM.MoveMemory(pWindowHandle, new int[]{this.control.handle}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_indexInParent(int pIndexInParent) {
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = -5;
        event.detail = -1;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getChild(event);
            ++i;
        }
        int indexInParent = event.detail;
        COM.MoveMemory(pIndexInParent, new int[]{indexInParent}, 4);
        return indexInParent == -1 ? 1 : 0;
    }

    int get_locale(int pLocale) {
        Locale locale = Locale.getDefault();
        char[] data = (String.valueOf(locale.getLanguage()) + "\u0000").toCharArray();
        int ptr = COM.SysAllocString(data);
        COM.MoveMemory(pLocale, new int[]{ptr}, OS.PTR_SIZEOF);
        data = (String.valueOf(locale.getCountry()) + "\u0000").toCharArray();
        ptr = COM.SysAllocString(data);
        COM.MoveMemory(pLocale + OS.PTR_SIZEOF, new int[]{ptr}, OS.PTR_SIZEOF);
        data = (String.valueOf(locale.getVariant()) + "\u0000").toCharArray();
        ptr = COM.SysAllocString(data);
        COM.MoveMemory(pLocale + 2 * OS.PTR_SIZEOF, new int[]{ptr}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_attributes(int pbstrAttributes) {
        AccessibleAttributeEvent event = new AccessibleAttributeEvent(this);
        int i = 0;
        while (i < this.accessibleAttributeListeners.size()) {
            AccessibleAttributeListener listener = (AccessibleAttributeListener)this.accessibleAttributeListeners.elementAt(i);
            listener.getAttributes(event);
            ++i;
        }
        String attributes = "";
        attributes = String.valueOf(attributes) + "margin-left:" + event.leftMargin + ";";
        attributes = String.valueOf(attributes) + "margin-top:" + event.topMargin + ";";
        attributes = String.valueOf(attributes) + "margin-right:" + event.rightMargin + ";";
        attributes = String.valueOf(attributes) + "margin-bottom:" + event.bottomMargin + ";";
        if (event.tabStops != null) {
            int i2 = 0;
            while (i2 < event.tabStops.length) {
                attributes = String.valueOf(attributes) + "tab-stop:position=" + event.tabStops[i2] + ";";
                ++i2;
            }
        }
        if (event.justify) {
            attributes = String.valueOf(attributes) + "text-align:justify;";
        }
        attributes = String.valueOf(attributes) + "text-align:" + (event.alignment == 16384 ? "left" : (event.alignment == 131072 ? "right" : "center")) + ";";
        attributes = String.valueOf(attributes) + "text-indent:" + event.indent + ";";
        if (event.attributes != null) {
            int i3 = 0;
            while (i3 + 1 < event.attributes.length) {
                attributes = String.valueOf(attributes) + event.attributes[i3] + ":" + event.attributes[i3 + 1] + ";";
                i3 += 2;
            }
        }
        if (this.getRole() == 42) {
            attributes = String.valueOf(attributes) + "text-model:a1;";
        }
        this.setString(pbstrAttributes, attributes);
        if (attributes.length() == 0) {
            return 1;
        }
        return 0;
    }

    int get_nActions(int pNActions) {
        AccessibleActionEvent event = new AccessibleActionEvent(this);
        int i = 0;
        while (i < this.accessibleActionListeners.size()) {
            AccessibleActionListener listener = (AccessibleActionListener)this.accessibleActionListeners.elementAt(i);
            listener.getActionCount(event);
            ++i;
        }
        COM.MoveMemory(pNActions, new int[]{event.count}, 4);
        return 0;
    }

    int doAction(int actionIndex) {
        AccessibleActionEvent event = new AccessibleActionEvent(this);
        event.index = actionIndex;
        int i = 0;
        while (i < this.accessibleActionListeners.size()) {
            AccessibleActionListener listener = (AccessibleActionListener)this.accessibleActionListeners.elementAt(i);
            listener.doAction(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int get_description(int actionIndex, int pbstrDescription) {
        AccessibleActionEvent event = new AccessibleActionEvent(this);
        event.index = actionIndex;
        int i = 0;
        while (i < this.accessibleActionListeners.size()) {
            AccessibleActionListener listener = (AccessibleActionListener)this.accessibleActionListeners.elementAt(i);
            listener.getDescription(event);
            ++i;
        }
        this.setString(pbstrDescription, event.result);
        if (event.result == null || event.result.length() == 0) {
            return 1;
        }
        return 0;
    }

    int get_keyBinding(int actionIndex, int nMaxBindings, int ppbstrKeyBindings, int pNBindings) {
        AccessibleActionEvent event = new AccessibleActionEvent(this);
        event.index = actionIndex;
        int i = 0;
        while (i < this.accessibleActionListeners.size()) {
            AccessibleActionListener listener = (AccessibleActionListener)this.accessibleActionListeners.elementAt(i);
            listener.getKeyBinding(event);
            ++i;
        }
        String keyBindings = event.result;
        int length = 0;
        if (keyBindings != null) {
            length = keyBindings.length();
        }
        int i2 = 0;
        int count = 0;
        while (i2 < length) {
            String keyBinding;
            if (count == nMaxBindings) break;
            int j = keyBindings.indexOf(59, i2);
            if (j == -1) {
                j = length;
            }
            if ((keyBinding = keyBindings.substring(i2, j)).length() > 0) {
                this.setString(ppbstrKeyBindings + count * OS.PTR_SIZEOF, keyBinding);
                ++count;
            }
            i2 = j + 1;
        }
        COM.MoveMemory(pNBindings, new int[]{count}, 4);
        if (count == 0) {
            this.setString(ppbstrKeyBindings, null);
            return 1;
        }
        return 0;
    }

    int get_name(int actionIndex, int pbstrName) {
        AccessibleActionEvent event = new AccessibleActionEvent(this);
        event.index = actionIndex;
        event.localized = false;
        int i = 0;
        while (i < this.accessibleActionListeners.size()) {
            AccessibleActionListener listener = (AccessibleActionListener)this.accessibleActionListeners.elementAt(i);
            listener.getName(event);
            ++i;
        }
        if (event.result == null || event.result.length() == 0) {
            this.setString(pbstrName, null);
            return 1;
        }
        this.setString(pbstrName, event.result);
        return 0;
    }

    int get_localizedName(int actionIndex, int pbstrLocalizedName) {
        AccessibleActionEvent event = new AccessibleActionEvent(this);
        event.index = actionIndex;
        event.localized = true;
        int i = 0;
        while (i < this.accessibleActionListeners.size()) {
            AccessibleActionListener listener = (AccessibleActionListener)this.accessibleActionListeners.elementAt(i);
            listener.getName(event);
            ++i;
        }
        if (event.result == null || event.result.length() == 0) {
            this.setString(pbstrLocalizedName, null);
            return 1;
        }
        this.setString(pbstrLocalizedName, event.result);
        return 0;
    }

    int get_appName(int pbstrName) {
        String appName = Display.getAppName();
        if (appName == null || appName.length() == 0) {
            this.setString(pbstrName, null);
            return 1;
        }
        this.setString(pbstrName, appName);
        return 0;
    }

    int get_appVersion(int pbstrVersion) {
        String appVersion = Display.getAppVersion();
        if (appVersion == null || appVersion.length() == 0) {
            this.setString(pbstrVersion, null);
            return 1;
        }
        this.setString(pbstrVersion, appVersion);
        return 0;
    }

    int get_toolkitName(int pbstrName) {
        String toolkitName = "SWT";
        this.setString(pbstrName, toolkitName);
        return 0;
    }

    int get_toolkitVersion(int pbstrVersion) {
        String toolkitVersion = "" + SWT.getVersion();
        this.setString(pbstrVersion, toolkitVersion);
        return 0;
    }

    int copyText(int startOffset, int endOffset) {
        AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        int i = 0;
        while (i < this.accessibleEditableTextListeners.size()) {
            AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
            listener.copyText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int deleteText(int startOffset, int endOffset) {
        AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        event.string = "";
        int i = 0;
        while (i < this.accessibleEditableTextListeners.size()) {
            AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
            listener.replaceText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int insertText(int offset, int pbstrText) {
        AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
        event.end = event.start = offset == -1 ? this.getCharacterCount() : offset;
        event.string = this.getString(pbstrText);
        int i = 0;
        while (i < this.accessibleEditableTextListeners.size()) {
            AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
            listener.replaceText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int cutText(int startOffset, int endOffset) {
        AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        int i = 0;
        while (i < this.accessibleEditableTextListeners.size()) {
            AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
            listener.cutText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int pasteText(int offset) {
        AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
        event.end = event.start = offset == -1 ? this.getCharacterCount() : offset;
        int i = 0;
        while (i < this.accessibleEditableTextListeners.size()) {
            AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
            listener.pasteText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int replaceText(int startOffset, int endOffset, int pbstrText) {
        AccessibleEditableTextEvent event = new AccessibleEditableTextEvent(this);
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        event.string = this.getString(pbstrText);
        int i = 0;
        while (i < this.accessibleEditableTextListeners.size()) {
            AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
            listener.replaceText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int setAttributes(int startOffset, int endOffset, int pbstrAttributes) {
        AccessibleTextAttributeEvent event = new AccessibleTextAttributeEvent(this);
        String string = this.getString(pbstrAttributes);
        if (string != null && string.length() > 0) {
            event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
            event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
            TextStyle style = new TextStyle();
            FontData fontData = null;
            int points = 10;
            String[] attributes = new String[]{};
            int begin = 0;
            int end = string.indexOf(59);
            while (end != -1 && end < string.length()) {
                String keyValue = string.substring(begin, end).trim();
                int colonIndex = keyValue.indexOf(58);
                if (colonIndex != -1 && colonIndex + 1 < keyValue.length()) {
                    String[] newAttributes = new String[attributes.length + 2];
                    System.arraycopy(attributes, 0, newAttributes, 0, attributes.length);
                    newAttributes[attributes.length] = keyValue.substring(0, colonIndex).trim();
                    newAttributes[attributes.length + 1] = keyValue.substring(colonIndex + 1).trim();
                    attributes = newAttributes;
                }
                begin = end + 1;
                end = string.indexOf(59, begin);
            }
            int i = 0;
            while (i + 1 < attributes.length) {
                String key = attributes[i];
                String value = attributes[i + 1];
                if (key.equals("text-position")) {
                    if (value.equals("super")) {
                        style.rise = points / 2;
                    } else if (value.equals("sub")) {
                        style.rise = -points / 2;
                    }
                } else if (key.equals("text-underline-type")) {
                    style.underline = true;
                    if (value.equals("double")) {
                        style.underlineStyle = 1;
                    } else if (value.equals("single") && style.underlineStyle != 3 && style.underlineStyle != 2) {
                        style.underlineStyle = 0;
                    }
                } else if (key.equals("text-underline-style") && value.equals("wave")) {
                    style.underline = true;
                    style.underlineStyle = 3;
                } else if (key.equals("invalid") && value.equals("true")) {
                    style.underline = true;
                    style.underlineStyle = 2;
                } else if (key.equals("text-line-through-type")) {
                    if (value.equals("single")) {
                        style.strikeout = true;
                    }
                } else if (key.equals("font-family")) {
                    if (fontData == null) {
                        fontData = new FontData();
                    }
                    fontData.setName(value);
                } else if (key.equals("font-size")) {
                    try {
                        String pts = value.endsWith("pt") ? value.substring(0, value.length() - 2) : value;
                        points = Integer.parseInt(pts);
                        if (fontData == null) {
                            fontData = new FontData();
                        }
                        fontData.setHeight(points);
                        if (style.rise > 0) {
                            style.rise = points / 2;
                        } else if (style.rise < 0) {
                            style.rise = -points / 2;
                        }
                    }
                    catch (NumberFormatException numberFormatException) {}
                } else if (key.equals("font-style")) {
                    if (value.equals("italic")) {
                        if (fontData == null) {
                            fontData = new FontData();
                        }
                        fontData.setStyle(fontData.getStyle() | 2);
                    }
                } else if (key.equals("font-weight")) {
                    if (value.equals("bold")) {
                        if (fontData == null) {
                            fontData = new FontData();
                        }
                        fontData.setStyle(fontData.getStyle() | 1);
                    } else {
                        try {
                            int weight = Integer.parseInt(value);
                            if (fontData == null) {
                                fontData = new FontData();
                            }
                            if (weight > 400) {
                                fontData.setStyle(fontData.getStyle() | 1);
                            }
                        }
                        catch (NumberFormatException numberFormatException) {}
                    }
                } else if (key.equals("color")) {
                    style.foreground = this.colorFromString(value);
                } else if (key.equals("background-color")) {
                    style.background = this.colorFromString(value);
                }
                i += 2;
            }
            if (attributes.length > 0) {
                event.attributes = attributes;
                if (fontData != null) {
                    style.font = new Font((Device)this.control.getDisplay(), fontData);
                }
                if (!style.equals(new TextStyle())) {
                    event.textStyle = style;
                }
            }
            i = 0;
            while (i < this.accessibleEditableTextListeners.size()) {
                AccessibleEditableTextListener listener = (AccessibleEditableTextListener)this.accessibleEditableTextListeners.elementAt(i);
                listener.setTextAttributes(event);
                ++i;
            }
            if (style.font != null) {
                style.font.dispose();
            }
            if (style.foreground != null) {
                style.foreground.dispose();
            }
            if (style.background != null) {
                style.background.dispose();
            }
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int get_anchor(int index, int pAnchor) {
        AccessibleHyperlinkEvent event = new AccessibleHyperlinkEvent(this);
        event.index = index;
        int i = 0;
        while (i < this.accessibleHyperlinkListeners.size()) {
            AccessibleHyperlinkListener listener = (AccessibleHyperlinkListener)this.accessibleHyperlinkListeners.elementAt(i);
            listener.getAnchor(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible != null) {
            accessible.AddRef();
            this.setPtrVARIANT(pAnchor, (short)9, accessible.getAddress());
            return 0;
        }
        this.setStringVARIANT(pAnchor, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int get_anchorTarget(int index, int pAnchorTarget) {
        AccessibleHyperlinkEvent event = new AccessibleHyperlinkEvent(this);
        event.index = index;
        int i = 0;
        while (i < this.accessibleHyperlinkListeners.size()) {
            AccessibleHyperlinkListener listener = (AccessibleHyperlinkListener)this.accessibleHyperlinkListeners.elementAt(i);
            listener.getAnchorTarget(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible != null) {
            accessible.AddRef();
            this.setPtrVARIANT(pAnchorTarget, (short)9, accessible.getAddress());
            return 0;
        }
        this.setStringVARIANT(pAnchorTarget, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int get_startIndex(int pIndex) {
        AccessibleHyperlinkEvent event = new AccessibleHyperlinkEvent(this);
        int i = 0;
        while (i < this.accessibleHyperlinkListeners.size()) {
            AccessibleHyperlinkListener listener = (AccessibleHyperlinkListener)this.accessibleHyperlinkListeners.elementAt(i);
            listener.getStartIndex(event);
            ++i;
        }
        COM.MoveMemory(pIndex, new int[]{event.index}, 4);
        return 0;
    }

    int get_endIndex(int pIndex) {
        AccessibleHyperlinkEvent event = new AccessibleHyperlinkEvent(this);
        int i = 0;
        while (i < this.accessibleHyperlinkListeners.size()) {
            AccessibleHyperlinkListener listener = (AccessibleHyperlinkListener)this.accessibleHyperlinkListeners.elementAt(i);
            listener.getEndIndex(event);
            ++i;
        }
        COM.MoveMemory(pIndex, new int[]{event.index}, 4);
        return 0;
    }

    int get_valid(int pValid) {
        return -2147467263;
    }

    int get_nHyperlinks(int pHyperlinkCount) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getHyperlinkCount(event);
            ++i;
        }
        COM.MoveMemory(pHyperlinkCount, new int[]{event.count}, 4);
        return 0;
    }

    int get_hyperlink(int index, int ppHyperlink) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.index = index;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getHyperlink(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible == null) {
            this.setIntVARIANT(ppHyperlink, (short)0, 0);
            return -2147024809;
        }
        accessible.AddRef();
        COM.MoveMemory(ppHyperlink, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_hyperlinkIndex(int charIndex, int pHyperlinkIndex) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.offset = charIndex;
        event.index = -1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getHyperlinkIndex(event);
            ++i;
        }
        COM.MoveMemory(pHyperlinkIndex, new int[]{event.index}, 4);
        if (event.index == -1) {
            return 1;
        }
        return 0;
    }

    int get_cellAt(int row, int column, int ppCell) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.row = row;
        event.column = column;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getCell(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible == null) {
            return -2147024809;
        }
        accessible.AddRef();
        COM.MoveMemory(ppCell, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_caption(int ppAccessible) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getCaption(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible == null) {
            COM.MoveMemory(ppAccessible, new int[1], OS.PTR_SIZEOF);
            return 1;
        }
        accessible.AddRef();
        COM.MoveMemory(ppAccessible, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_columnDescription(int column, int pbstrDescription) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.column = column;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getColumnDescription(event);
            ++i;
        }
        this.setString(pbstrDescription, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int get_nColumns(int pColumnCount) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getColumnCount(event);
            ++i;
        }
        COM.MoveMemory(pColumnCount, new int[]{event.count}, 4);
        return 0;
    }

    int get_nRows(int pRowCount) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getRowCount(event);
            ++i;
        }
        COM.MoveMemory(pRowCount, new int[]{event.count}, 4);
        return 0;
    }

    int get_nSelectedCells(int pCellCount) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSelectedCellCount(event);
            ++i;
        }
        COM.MoveMemory(pCellCount, new int[]{event.count}, 4);
        return 0;
    }

    int get_nSelectedColumns(int pColumnCount) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSelectedColumnCount(event);
            ++i;
        }
        COM.MoveMemory(pColumnCount, new int[]{event.count}, 4);
        return 0;
    }

    int get_nSelectedRows(int pRowCount) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSelectedRowCount(event);
            ++i;
        }
        COM.MoveMemory(pRowCount, new int[]{event.count}, 4);
        return 0;
    }

    int get_rowDescription(int row, int pbstrDescription) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.row = row;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getRowDescription(event);
            ++i;
        }
        this.setString(pbstrDescription, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int get_selectedCells(int ppCells, int pNSelectedCells) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSelectedCells(event);
            ++i;
        }
        if (event.accessibles == null || event.accessibles.length == 0) {
            COM.MoveMemory(ppCells, new int[1], OS.PTR_SIZEOF);
            COM.MoveMemory(pNSelectedCells, new int[1], 4);
            return 1;
        }
        int length = event.accessibles.length;
        int pv = COM.CoTaskMemAlloc(length * OS.PTR_SIZEOF);
        int count = 0;
        int i2 = 0;
        while (i2 < length) {
            Accessible accessible = event.accessibles[i2];
            if (accessible != null) {
                accessible.AddRef();
                COM.MoveMemory(pv + i2 * OS.PTR_SIZEOF, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
                ++count;
            }
            ++i2;
        }
        COM.MoveMemory(ppCells, new int[]{pv}, OS.PTR_SIZEOF);
        COM.MoveMemory(pNSelectedCells, new int[]{count}, 4);
        return 0;
    }

    int get_selectedColumns(int ppSelectedColumns, int pNColumns) {
        int count;
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSelectedColumns(event);
            ++i;
        }
        int n = count = event.selected == null ? 0 : event.selected.length;
        if (count == 0) {
            COM.MoveMemory(ppSelectedColumns, new int[1], OS.PTR_SIZEOF);
            COM.MoveMemory(pNColumns, new int[1], 4);
            return 1;
        }
        int pv = COM.CoTaskMemAlloc(count * 4);
        COM.MoveMemory(pv, event.selected, count * 4);
        COM.MoveMemory(ppSelectedColumns, new int[]{pv}, OS.PTR_SIZEOF);
        COM.MoveMemory(pNColumns, new int[]{count}, 4);
        return 0;
    }

    int get_selectedRows(int ppSelectedRows, int pNRows) {
        int count;
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSelectedRows(event);
            ++i;
        }
        int n = count = event.selected == null ? 0 : event.selected.length;
        if (count == 0) {
            COM.MoveMemory(ppSelectedRows, new int[1], OS.PTR_SIZEOF);
            COM.MoveMemory(pNRows, new int[1], 4);
            return 1;
        }
        int pv = COM.CoTaskMemAlloc(count * 4);
        COM.MoveMemory(pv, event.selected, count * 4);
        COM.MoveMemory(ppSelectedRows, new int[]{pv}, OS.PTR_SIZEOF);
        COM.MoveMemory(pNRows, new int[]{count}, 4);
        return 0;
    }

    int get_summary(int ppAccessible) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.getSummary(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible == null) {
            COM.MoveMemory(ppAccessible, new int[1], OS.PTR_SIZEOF);
            return 1;
        }
        accessible.AddRef();
        COM.MoveMemory(ppAccessible, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_isColumnSelected(int column, int pIsSelected) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.column = column;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.isColumnSelected(event);
            ++i;
        }
        COM.MoveMemory(pIsSelected, new int[]{event.isSelected ? 1 : 0}, 4);
        return 0;
    }

    int get_isRowSelected(int row, int pIsSelected) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.row = row;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.isRowSelected(event);
            ++i;
        }
        COM.MoveMemory(pIsSelected, new int[]{event.isSelected ? 1 : 0}, 4);
        return 0;
    }

    int selectRow(int row) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.row = row;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.setSelectedRow(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int selectColumn(int column) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.column = column;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.setSelectedColumn(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int unselectRow(int row) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.row = row;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.deselectRow(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int unselectColumn(int column) {
        AccessibleTableEvent event = new AccessibleTableEvent(this);
        event.column = column;
        int i = 0;
        while (i < this.accessibleTableListeners.size()) {
            AccessibleTableListener listener = (AccessibleTableListener)this.accessibleTableListeners.elementAt(i);
            listener.deselectColumn(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int get_modelChange(int pModelChange) {
        if (this.tableChange == null) {
            COM.MoveMemory(pModelChange, new int[1], OS.PTR_SIZEOF);
            return 1;
        }
        COM.MoveMemory(pModelChange, this.tableChange, this.tableChange.length * 4);
        return 0;
    }

    int get_columnExtent(int pNColumnsSpanned) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getColumnSpan(event);
            ++i;
        }
        COM.MoveMemory(pNColumnsSpanned, new int[]{event.count}, 4);
        return 0;
    }

    int get_columnHeaderCells(int ppCellAccessibles, int pNColumnHeaderCells) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getColumnHeaders(event);
            ++i;
        }
        if (event.accessibles == null || event.accessibles.length == 0) {
            COM.MoveMemory(ppCellAccessibles, new int[1], OS.PTR_SIZEOF);
            COM.MoveMemory(pNColumnHeaderCells, new int[1], 4);
            return 1;
        }
        int length = event.accessibles.length;
        int pv = COM.CoTaskMemAlloc(length * OS.PTR_SIZEOF);
        int count = 0;
        int i2 = 0;
        while (i2 < length) {
            Accessible accessible = event.accessibles[i2];
            if (accessible != null) {
                accessible.AddRef();
                COM.MoveMemory(pv + i2 * OS.PTR_SIZEOF, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
                ++count;
            }
            ++i2;
        }
        COM.MoveMemory(ppCellAccessibles, new int[]{pv}, OS.PTR_SIZEOF);
        COM.MoveMemory(pNColumnHeaderCells, new int[]{count}, 4);
        return 0;
    }

    int get_columnIndex(int pColumnIndex) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getColumnIndex(event);
            ++i;
        }
        COM.MoveMemory(pColumnIndex, new int[]{event.index}, 4);
        return 0;
    }

    int get_rowExtent(int pNRowsSpanned) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getRowSpan(event);
            ++i;
        }
        COM.MoveMemory(pNRowsSpanned, new int[]{event.count}, 4);
        return 0;
    }

    int get_rowHeaderCells(int ppCellAccessibles, int pNRowHeaderCells) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getRowHeaders(event);
            ++i;
        }
        if (event.accessibles == null || event.accessibles.length == 0) {
            COM.MoveMemory(ppCellAccessibles, new int[1], OS.PTR_SIZEOF);
            COM.MoveMemory(pNRowHeaderCells, new int[1], 4);
            return 1;
        }
        int length = event.accessibles.length;
        int pv = COM.CoTaskMemAlloc(length * OS.PTR_SIZEOF);
        int count = 0;
        int i2 = 0;
        while (i2 < length) {
            Accessible accessible = event.accessibles[i2];
            if (accessible != null) {
                accessible.AddRef();
                COM.MoveMemory(pv + i2 * OS.PTR_SIZEOF, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
                ++count;
            }
            ++i2;
        }
        COM.MoveMemory(ppCellAccessibles, new int[]{pv}, OS.PTR_SIZEOF);
        COM.MoveMemory(pNRowHeaderCells, new int[]{count}, 4);
        return 0;
    }

    int get_rowIndex(int pRowIndex) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getRowIndex(event);
            ++i;
        }
        COM.MoveMemory(pRowIndex, new int[]{event.index}, 4);
        return 0;
    }

    int get_isSelected(int pIsSelected) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.isSelected(event);
            ++i;
        }
        COM.MoveMemory(pIsSelected, new int[]{event.isSelected ? 1 : 0}, 4);
        return 0;
    }

    int get_rowColumnExtents(int pRow, int pColumn, int pRowExtents, int pColumnExtents, int pIsSelected) {
        return -2147352573;
    }

    int get_table(int ppTable) {
        AccessibleTableCellEvent event = new AccessibleTableCellEvent(this);
        int i = 0;
        while (i < this.accessibleTableCellListeners.size()) {
            AccessibleTableCellListener listener = (AccessibleTableCellListener)this.accessibleTableCellListeners.elementAt(i);
            listener.getTable(event);
            ++i;
        }
        Accessible accessible = event.accessible;
        if (accessible == null) {
            COM.MoveMemory(ppTable, new int[1], OS.PTR_SIZEOF);
            return 1;
        }
        accessible.AddRef();
        COM.MoveMemory(ppTable, new int[]{accessible.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    int addSelection(int startOffset, int endOffset) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.addSelection(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int get_attributes(int offset, int pStartOffset, int pEndOffset, int pbstrTextAttributes) {
        AccessibleTextAttributeEvent event = new AccessibleTextAttributeEvent(this);
        event.offset = offset == -1 ? this.getCharacterCount() : offset;
        int i = 0;
        while (i < this.accessibleAttributeListeners.size()) {
            AccessibleAttributeListener listener = (AccessibleAttributeListener)this.accessibleAttributeListeners.elementAt(i);
            listener.getTextAttributes(event);
            ++i;
        }
        String textAttributes = "";
        TextStyle style = event.textStyle;
        if (style != null) {
            Color color;
            Font font;
            if (style.rise != 0) {
                textAttributes = String.valueOf(textAttributes) + "text-position:";
                textAttributes = style.rise > 0 ? String.valueOf(textAttributes) + "super" : String.valueOf(textAttributes) + "sub";
            }
            if (style.underline) {
                textAttributes = String.valueOf(textAttributes) + "text-underline-type:";
                switch (style.underlineStyle) {
                    case 0: {
                        textAttributes = String.valueOf(textAttributes) + "single;";
                        break;
                    }
                    case 1: {
                        textAttributes = String.valueOf(textAttributes) + "double;";
                        break;
                    }
                    case 3: {
                        textAttributes = String.valueOf(textAttributes) + "single;text-underline-style:wave;";
                        break;
                    }
                    case 2: {
                        textAttributes = String.valueOf(textAttributes) + "single;text-underline-style:wave;invalid:true;";
                        break;
                    }
                    default: {
                        textAttributes = String.valueOf(textAttributes) + "none;";
                    }
                }
            }
            if (style.strikeout) {
                textAttributes = String.valueOf(textAttributes) + "text-line-through-type:single;";
            }
            if ((font = style.font) != null && !font.isDisposed()) {
                FontData fontData = font.getFontData()[0];
                textAttributes = String.valueOf(textAttributes) + "font-family:" + fontData.getName() + ";";
                textAttributes = String.valueOf(textAttributes) + "font-size:" + fontData.getHeight() + "pt;";
                textAttributes = String.valueOf(textAttributes) + "font-style:" + (fontData.data.lfItalic != 0 ? "italic" : "normal") + ";";
                textAttributes = String.valueOf(textAttributes) + "font-weight:" + fontData.data.lfWeight + ";";
            }
            if ((color = style.foreground) != null && !color.isDisposed()) {
                textAttributes = String.valueOf(textAttributes) + "color:rgb(" + color.getRed() + "," + color.getGreen() + "," + color.getBlue() + ");";
            }
            if ((color = style.background) != null && !color.isDisposed()) {
                textAttributes = String.valueOf(textAttributes) + "background-color:rgb(" + color.getRed() + "," + color.getGreen() + "," + color.getBlue() + ");";
            }
        }
        if (event.attributes != null) {
            int i2 = 0;
            while (i2 + 1 < event.attributes.length) {
                textAttributes = String.valueOf(textAttributes) + event.attributes[i2] + ":" + event.attributes[i2 + 1] + ";";
                i2 += 2;
            }
        }
        COM.MoveMemory(pStartOffset, new int[]{event.start}, 4);
        COM.MoveMemory(pEndOffset, new int[]{event.end}, 4);
        this.setString(pbstrTextAttributes, textAttributes);
        if (textAttributes.length() == 0) {
            return 1;
        }
        return 0;
    }

    int get_caretOffset(int pOffset) {
        int offset = this.getCaretOffset();
        COM.MoveMemory(pOffset, new int[]{offset}, 4);
        if (offset == -1) {
            return 1;
        }
        return 0;
    }

    int get_characterExtents(int offset, int coordType, int pX, int pY, int pWidth, int pHeight) {
        int length = this.getCharacterCount();
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.start = offset == -1 ? length : (offset < 0 ? 0 : offset);
        event.end = offset == -1 || offset >= length ? length : offset + 1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getTextBounds(event);
            ++i;
        }
        COM.MoveMemory(pX, new int[]{event.x}, 4);
        COM.MoveMemory(pY, new int[]{event.y}, 4);
        COM.MoveMemory(pWidth, new int[]{event.width}, 4);
        COM.MoveMemory(pHeight, new int[]{event.height}, 4);
        if (event.width == 0 && event.height == 0) {
            return -2147024809;
        }
        return 0;
    }

    int get_nSelections(int pNSelections) {
        AccessibleTextListener listener;
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.count = -1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getSelectionCount(event);
            ++i;
        }
        if (event.count == -1) {
            event.childID = -1;
            event.offset = -1;
            event.length = 0;
            i = 0;
            while (i < this.accessibleTextListeners.size()) {
                listener = (AccessibleTextListener)this.accessibleTextListeners.elementAt(i);
                listener.getSelectionRange(event);
                ++i;
            }
            event.count = event.offset != -1 && event.length > 0 ? 1 : 0;
        }
        COM.MoveMemory(pNSelections, new int[]{event.count}, 4);
        return 0;
    }

    int get_offsetAtPoint(int x, int y, int coordType, int pOffset) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.x = x;
        event.y = y;
        event.offset = -1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getOffsetAtPoint(event);
            ++i;
        }
        COM.MoveMemory(pOffset, new int[]{event.offset}, 4);
        if (event.offset == -1) {
            return 1;
        }
        return 0;
    }

    int get_selection(int selectionIndex, int pStartOffset, int pEndOffset) {
        AccessibleTextListener listener;
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.index = selectionIndex;
        event.start = -1;
        event.end = -1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getSelection(event);
            ++i;
        }
        if (event.start == -1 && selectionIndex == 0) {
            event.childID = -1;
            event.offset = -1;
            event.length = 0;
            i = 0;
            while (i < this.accessibleTextListeners.size()) {
                listener = (AccessibleTextListener)this.accessibleTextListeners.elementAt(i);
                listener.getSelectionRange(event);
                ++i;
            }
            event.start = event.offset;
            event.end = event.offset + event.length;
        }
        COM.MoveMemory(pStartOffset, new int[]{event.start}, 4);
        COM.MoveMemory(pEndOffset, new int[]{event.end}, 4);
        if (event.start == -1) {
            return 1;
        }
        return 0;
    }

    int get_text(int startOffset, int endOffset, int pbstrText) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        int n = event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        if (event.start > event.end) {
            int temp = event.start;
            event.start = event.end;
            event.end = temp;
        }
        event.count = 0;
        event.type = 5;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getText(event);
            ++i;
        }
        if (event.result == null) {
            AccessibleControlEvent e = new AccessibleControlEvent(this);
            e.childID = -1;
            int i2 = 0;
            while (i2 < this.accessibleControlListeners.size()) {
                AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i2);
                listener.getRole(e);
                listener.getValue(e);
                ++i2;
            }
            if (e.detail == 42) {
                event.result = e.result;
            }
        }
        this.setString(pbstrText, event.result);
        if (event.result == null) {
            return -2147024809;
        }
        return 0;
    }

    int get_textBeforeOffset(int offset, int boundaryType, int pStartOffset, int pEndOffset, int pbstrText) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        int charCount = this.getCharacterCount();
        event.end = event.start = offset == -1 ? charCount : (offset == -2 ? this.getCaretOffset() : offset);
        event.count = -1;
        switch (boundaryType) {
            case 0: {
                event.type = 0;
                break;
            }
            case 1: {
                event.type = 1;
                break;
            }
            case 2: {
                event.type = 2;
                break;
            }
            case 3: {
                event.type = 3;
                break;
            }
            case 4: {
                event.type = 4;
                break;
            }
            default: {
                return -2147024809;
            }
        }
        int eventStart = event.start;
        int eventEnd = event.end;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getText(event);
            ++i;
        }
        if (event.end < charCount) {
            switch (boundaryType) {
                case 1: 
                case 2: 
                case 3: 
                case 4: {
                    AccessibleTextExtendedListener listener;
                    int start = event.start;
                    event.start = eventStart;
                    event.end = eventEnd;
                    event.count = 0;
                    int i2 = 0;
                    while (i2 < this.accessibleTextExtendedListeners.size()) {
                        listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i2);
                        listener.getText(event);
                        ++i2;
                    }
                    event.end = event.start;
                    event.start = start;
                    event.type = 5;
                    event.count = 0;
                    i2 = 0;
                    while (i2 < this.accessibleTextExtendedListeners.size()) {
                        listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i2);
                        listener.getText(event);
                        ++i2;
                    }
                    break;
                }
            }
        }
        COM.MoveMemory(pStartOffset, new int[]{event.start}, 4);
        COM.MoveMemory(pEndOffset, new int[]{event.end}, 4);
        this.setString(pbstrText, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int get_textAfterOffset(int offset, int boundaryType, int pStartOffset, int pEndOffset, int pbstrText) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        int charCount = this.getCharacterCount();
        event.end = event.start = offset == -1 ? charCount : (offset == -2 ? this.getCaretOffset() : offset);
        event.count = 1;
        switch (boundaryType) {
            case 0: {
                event.type = 0;
                break;
            }
            case 1: {
                event.type = 1;
                break;
            }
            case 2: {
                event.type = 2;
                break;
            }
            case 3: {
                event.type = 3;
                break;
            }
            case 4: {
                event.type = 4;
                break;
            }
            default: {
                return -2147024809;
            }
        }
        int eventStart = event.start;
        int eventEnd = event.end;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getText(event);
            ++i;
        }
        if (event.end < charCount) {
            switch (boundaryType) {
                case 1: 
                case 2: 
                case 3: 
                case 4: {
                    AccessibleTextExtendedListener listener;
                    int start = event.start;
                    event.start = eventStart;
                    event.end = eventEnd;
                    event.count = 2;
                    int i2 = 0;
                    while (i2 < this.accessibleTextExtendedListeners.size()) {
                        listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i2);
                        listener.getText(event);
                        ++i2;
                    }
                    event.end = event.start;
                    event.start = start;
                    event.type = 5;
                    event.count = 0;
                    i2 = 0;
                    while (i2 < this.accessibleTextExtendedListeners.size()) {
                        listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i2);
                        listener.getText(event);
                        ++i2;
                    }
                    break;
                }
            }
        }
        COM.MoveMemory(pStartOffset, new int[]{event.start}, 4);
        COM.MoveMemory(pEndOffset, new int[]{event.end}, 4);
        this.setString(pbstrText, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int get_textAtOffset(int offset, int boundaryType, int pStartOffset, int pEndOffset, int pbstrText) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        int charCount = this.getCharacterCount();
        event.end = event.start = offset == -1 ? charCount : (offset == -2 ? this.getCaretOffset() : offset);
        event.count = 0;
        switch (boundaryType) {
            case 0: {
                event.type = 0;
                break;
            }
            case 1: {
                event.type = 1;
                break;
            }
            case 2: {
                event.type = 2;
                break;
            }
            case 3: {
                event.type = 3;
                break;
            }
            case 4: {
                event.type = 4;
                break;
            }
            case 5: {
                event.type = 5;
                event.start = 0;
                event.end = charCount;
                event.count = 0;
                break;
            }
            default: {
                return -2147024809;
            }
        }
        int eventStart = event.start;
        int eventEnd = event.end;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getText(event);
            ++i;
        }
        if (event.end < charCount) {
            switch (boundaryType) {
                case 1: 
                case 2: 
                case 3: 
                case 4: {
                    AccessibleTextExtendedListener listener;
                    int start = event.start;
                    event.start = eventStart;
                    event.end = eventEnd;
                    event.count = 1;
                    int i2 = 0;
                    while (i2 < this.accessibleTextExtendedListeners.size()) {
                        listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i2);
                        listener.getText(event);
                        ++i2;
                    }
                    event.end = event.start;
                    event.start = start;
                    event.type = 5;
                    event.count = 0;
                    i2 = 0;
                    while (i2 < this.accessibleTextExtendedListeners.size()) {
                        listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i2);
                        listener.getText(event);
                        ++i2;
                    }
                    break;
                }
            }
        }
        COM.MoveMemory(pStartOffset, new int[]{event.start}, 4);
        COM.MoveMemory(pEndOffset, new int[]{event.end}, 4);
        this.setString(pbstrText, event.result);
        if (event.result == null) {
            return 1;
        }
        return 0;
    }

    int removeSelection(int selectionIndex) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.index = selectionIndex;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.removeSelection(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int setCaretOffset(int offset) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.offset = offset == -1 ? this.getCharacterCount() : offset;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.setCaretOffset(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int setSelection(int selectionIndex, int startOffset, int endOffset) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.index = selectionIndex;
        event.start = startOffset == -1 ? this.getCharacterCount() : startOffset;
        event.end = endOffset == -1 ? this.getCharacterCount() : endOffset;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.setSelection(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int get_nCharacters(int pNCharacters) {
        int count = this.getCharacterCount();
        COM.MoveMemory(pNCharacters, new int[]{count}, 4);
        return 0;
    }

    int scrollSubstringTo(int startIndex, int endIndex, int scrollType) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.start = startIndex;
        event.end = endIndex;
        switch (scrollType) {
            case 0: {
                event.type = 0;
                break;
            }
            case 1: {
                event.type = 1;
                break;
            }
            case 2: {
                event.type = 2;
                break;
            }
            case 3: {
                event.type = 3;
                break;
            }
            case 4: {
                event.type = 4;
                break;
            }
            case 5: {
                event.type = 5;
                break;
            }
            case 6: {
                event.type = 6;
            }
        }
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.scrollText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int scrollSubstringToPoint(int startIndex, int endIndex, int coordinateType, int x, int y) {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.start = startIndex;
        event.end = endIndex;
        event.type = 7;
        event.x = x;
        event.y = y;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.scrollText(event);
            ++i;
        }
        if (event.result == null || !event.result.equals("OK")) {
            return -2147024809;
        }
        return 0;
    }

    int get_newText(int pNewText) {
        String text = null;
        int start = 0;
        int end = 0;
        if (this.textInserted != null) {
            text = (String)this.textInserted[3];
            start = (Integer)this.textInserted[1];
            end = (Integer)this.textInserted[2];
        }
        this.setString(pNewText, text);
        COM.MoveMemory(pNewText + OS.PTR_SIZEOF, new int[]{start}, 4);
        COM.MoveMemory(pNewText + OS.PTR_SIZEOF + 4, new int[]{end}, 4);
        if (this.textInserted == null) {
            return 1;
        }
        return 0;
    }

    int get_oldText(int pOldText) {
        String text = null;
        int start = 0;
        int end = 0;
        if (this.textDeleted != null) {
            text = (String)this.textDeleted[3];
            start = (Integer)this.textDeleted[1];
            end = (Integer)this.textDeleted[2];
        }
        this.setString(pOldText, text);
        COM.MoveMemory(pOldText + OS.PTR_SIZEOF, new int[]{start}, 4);
        COM.MoveMemory(pOldText + OS.PTR_SIZEOF + 4, new int[]{end}, 4);
        if (this.textDeleted == null) {
            return 1;
        }
        return 0;
    }

    int get_currentValue(int pCurrentValue) {
        AccessibleValueEvent event = new AccessibleValueEvent(this);
        int i = 0;
        while (i < this.accessibleValueListeners.size()) {
            AccessibleValueListener listener = (AccessibleValueListener)this.accessibleValueListeners.elementAt(i);
            listener.getCurrentValue(event);
            ++i;
        }
        this.setNumberVARIANT(pCurrentValue, event.value);
        return 0;
    }

    int setCurrentValue(int value) {
        AccessibleValueEvent event = new AccessibleValueEvent(this);
        event.value = this.getNumberVARIANT(value);
        int i = 0;
        while (i < this.accessibleValueListeners.size()) {
            AccessibleValueListener listener = (AccessibleValueListener)this.accessibleValueListeners.elementAt(i);
            listener.setCurrentValue(event);
            ++i;
        }
        return 0;
    }

    int get_maximumValue(int pMaximumValue) {
        AccessibleValueEvent event = new AccessibleValueEvent(this);
        int i = 0;
        while (i < this.accessibleValueListeners.size()) {
            AccessibleValueListener listener = (AccessibleValueListener)this.accessibleValueListeners.elementAt(i);
            listener.getMaximumValue(event);
            ++i;
        }
        this.setNumberVARIANT(pMaximumValue, event.value);
        return 0;
    }

    int get_minimumValue(int pMinimumValue) {
        AccessibleValueEvent event = new AccessibleValueEvent(this);
        int i = 0;
        while (i < this.accessibleValueListeners.size()) {
            AccessibleValueListener listener = (AccessibleValueListener)this.accessibleValueListeners.elementAt(i);
            listener.getMinimumValue(event);
            ++i;
        }
        this.setNumberVARIANT(pMinimumValue, event.value);
        return 0;
    }

    int eventChildID() {
        if (this.parent == null) {
            return 0;
        }
        if (this.uniqueID == -1) {
            this.uniqueID = UniqueID--;
        }
        return this.uniqueID;
    }

    void checkUniqueID(int childID) {
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = childID;
        int l = 0;
        while (l < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(l);
            listener.getChild(event);
            ++l;
        }
        Accessible accessible = event.accessible;
        if (accessible != null && accessible.uniqueID == -1) {
            accessible.uniqueID = childID;
        }
    }

    int childIDToOs(int childID) {
        if (childID == -1) {
            return 0;
        }
        int osChildID = childID + 1;
        if (this.control instanceof Tree) {
            osChildID = OS.COMCTL32_MAJOR < 6 ? childID : OS.SendMessage(this.control.handle, 4395, childID, 0);
        }
        this.checkUniqueID(osChildID);
        return osChildID;
    }

    int osToChildID(int osChildID) {
        if (osChildID == 0) {
            return -1;
        }
        if (!(this.control instanceof Tree)) {
            return osChildID - 1;
        }
        if (OS.COMCTL32_MAJOR < 6) {
            return osChildID;
        }
        return OS.SendMessage(this.control.handle, 4394, osChildID, 0);
    }

    int stateToOs(int state) {
        int osState = 0;
        if ((state & 2) != 0) {
            osState |= 2;
        }
        if ((state & 0x200000) != 0) {
            osState |= 0x200000;
        }
        if ((state & 0x1000000) != 0) {
            osState |= 0x1000000;
        }
        if ((state & 4) != 0) {
            osState |= 4;
        }
        if ((state & 0x100000) != 0) {
            osState |= 0x100000;
        }
        if ((state & 8) != 0) {
            osState |= 8;
        }
        if ((state & 0x10) != 0) {
            osState |= 0x10;
        }
        if ((state & 0x200) != 0) {
            osState |= 0x200;
        }
        if ((state & 0x400) != 0) {
            osState |= 0x400;
        }
        if ((state & 0x80) != 0) {
            osState |= 0x80;
        }
        if ((state & 0x800) != 0) {
            osState |= 0x800;
        }
        if ((state & 0x40) != 0) {
            osState |= 0x40;
        }
        if ((state & 0x8000) != 0) {
            osState |= 0x8000;
        }
        if ((state & 0x10000) != 0) {
            osState |= 0x10000;
        }
        if ((state & 0x20000) != 0) {
            osState |= 0x20000;
        }
        if ((state & 0x400000) != 0) {
            osState |= 0x400000;
        }
        if ((state & 1) != 0) {
            osState |= 1;
        }
        return osState;
    }

    int osToState(int osState) {
        int state = 0;
        if ((osState & 2) != 0) {
            state |= 2;
        }
        if ((osState & 0x200000) != 0) {
            state |= 0x200000;
        }
        if ((osState & 0x1000000) != 0) {
            state |= 0x1000000;
        }
        if ((osState & 4) != 0) {
            state |= 4;
        }
        if ((osState & 0x100000) != 0) {
            state |= 0x100000;
        }
        if ((osState & 8) != 0) {
            state |= 8;
        }
        if ((osState & 0x10) != 0) {
            state |= 0x10;
        }
        if ((osState & 0x200) != 0) {
            state |= 0x200;
        }
        if ((osState & 0x400) != 0) {
            state |= 0x400;
        }
        if ((osState & 0x80) != 0) {
            state |= 0x80;
        }
        if ((osState & 0x800) != 0) {
            state |= 0x800;
        }
        if ((osState & 0x40) != 0) {
            state |= 0x40;
        }
        if ((osState & 0x8000) != 0) {
            state |= 0x8000;
        }
        if ((osState & 0x10000) != 0) {
            state |= 0x10000;
        }
        if ((osState & 0x20000) != 0) {
            state |= 0x20000;
        }
        if ((osState & 0x400000) != 0) {
            state |= 0x400000;
        }
        if ((osState & 1) != 0) {
            state |= 1;
        }
        return state;
    }

    int roleToOs(int role) {
        switch (role) {
            case 10: {
                return 10;
            }
            case 9: {
                return 9;
            }
            case 2: {
                return 2;
            }
            case 11: {
                return 11;
            }
            case 12: {
                return 12;
            }
            case 21: {
                return 21;
            }
            case 13: {
                return 13;
            }
            case 3: {
                return 3;
            }
            case 18: {
                return 18;
            }
            case 41: {
                return 41;
            }
            case 43: {
                return 43;
            }
            case 44: {
                return 44;
            }
            case 45: {
                return 45;
            }
            case 62: {
                return 62;
            }
            case 46: {
                return 46;
            }
            case 42: {
                return 42;
            }
            case 22: {
                return 22;
            }
            case 33: {
                return 33;
            }
            case 34: {
                return 34;
            }
            case 24: {
                return 24;
            }
            case 29: {
                return 29;
            }
            case 25: {
                return 25;
            }
            case 26: {
                return 26;
            }
            case 35: {
                return 35;
            }
            case 36: {
                return 36;
            }
            case 60: {
                return 60;
            }
            case 37: {
                return 37;
            }
            case 48: {
                return 48;
            }
            case 51: {
                return 51;
            }
            case 30: {
                return 30;
            }
            case 8: {
                return 8;
            }
            case 54: {
                return 54;
            }
            case 27: {
                return 27;
            }
            case 15: {
                return 15;
            }
            case 40: {
                return 40;
            }
            case 20: {
                return 20;
            }
            case 28: {
                return 28;
            }
            case 52: {
                return 52;
            }
            case 23: {
                return 23;
            }
            case 61: {
                return 61;
            }
            case 47: {
                return 47;
            }
            case 1025: {
                return 10;
            }
            case 1027: {
                return 12;
            }
            case 1073: {
                return 12;
            }
            case 1029: {
                return 47;
            }
            case 1038: {
                return 10;
            }
            case 1040: {
                return 10;
            }
            case 1043: {
                return 10;
            }
            case 1044: {
                return 10;
            }
            case 1053: {
                return 10;
            }
            case 1054: {
                return 10;
            }
            case 1060: {
                return 10;
            }
        }
        return 10;
    }

    int osToRole(int osRole) {
        switch (osRole) {
            case 10: {
                return 10;
            }
            case 9: {
                return 9;
            }
            case 2: {
                return 2;
            }
            case 11: {
                return 11;
            }
            case 12: {
                return 12;
            }
            case 21: {
                return 21;
            }
            case 13: {
                return 13;
            }
            case 3: {
                return 3;
            }
            case 18: {
                return 18;
            }
            case 41: {
                return 41;
            }
            case 43: {
                return 43;
            }
            case 44: {
                return 44;
            }
            case 45: {
                return 45;
            }
            case 62: {
                return 62;
            }
            case 46: {
                return 46;
            }
            case 42: {
                return 42;
            }
            case 22: {
                return 22;
            }
            case 33: {
                return 33;
            }
            case 34: {
                return 34;
            }
            case 24: {
                return 24;
            }
            case 29: {
                return 29;
            }
            case 25: {
                return 25;
            }
            case 26: {
                return 26;
            }
            case 35: {
                return 35;
            }
            case 36: {
                return 36;
            }
            case 60: {
                return 60;
            }
            case 37: {
                return 37;
            }
            case 48: {
                return 48;
            }
            case 51: {
                return 51;
            }
            case 30: {
                return 30;
            }
            case 8: {
                return 8;
            }
            case 54: {
                return 54;
            }
            case 27: {
                return 27;
            }
            case 15: {
                return 15;
            }
            case 40: {
                return 40;
            }
            case 20: {
                return 20;
            }
            case 28: {
                return 28;
            }
            case 52: {
                return 52;
            }
            case 23: {
                return 23;
            }
            case 61: {
                return 61;
            }
            case 47: {
                return 47;
            }
        }
        return 10;
    }

    Color colorFromString(String rgbString) {
        try {
            int open = rgbString.indexOf(40);
            int comma1 = rgbString.indexOf(44);
            int comma2 = rgbString.indexOf(44, comma1 + 1);
            int close = rgbString.indexOf(41);
            int r = Integer.parseInt(rgbString.substring(open + 1, comma1));
            int g = Integer.parseInt(rgbString.substring(comma1 + 1, comma2));
            int b = Integer.parseInt(rgbString.substring(comma2 + 1, close));
            return new Color(this.control.getDisplay(), r, g, b);
        }
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    int getCaretOffset() {
        AccessibleTextListener listener;
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.offset = -1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            listener = (AccessibleTextListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getCaretOffset(event);
            ++i;
        }
        if (event.offset == -1) {
            i = 0;
            while (i < this.accessibleTextListeners.size()) {
                event.childID = -1;
                listener = (AccessibleTextListener)this.accessibleTextListeners.elementAt(i);
                listener.getCaretOffset(event);
                ++i;
            }
        }
        return event.offset;
    }

    int getCharacterCount() {
        AccessibleTextEvent event = new AccessibleTextEvent(this);
        event.count = -1;
        int i = 0;
        while (i < this.accessibleTextExtendedListeners.size()) {
            AccessibleTextExtendedListener listener = (AccessibleTextExtendedListener)this.accessibleTextExtendedListeners.elementAt(i);
            listener.getCharacterCount(event);
            ++i;
        }
        if (event.count == -1) {
            AccessibleControlEvent e = new AccessibleControlEvent(this);
            e.childID = -1;
            int i2 = 0;
            while (i2 < this.accessibleControlListeners.size()) {
                AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i2);
                listener.getRole(e);
                listener.getValue(e);
                ++i2;
            }
            event.count = e.detail == 42 && e.result != null ? e.result.length() : 0;
        }
        return event.count;
    }

    int getRelationCount() {
        int count = 0;
        int type = 0;
        while (type < 15) {
            if (this.relations[type] != null) {
                ++count;
            }
            ++type;
        }
        return count;
    }

    int getRole() {
        AccessibleControlEvent event = new AccessibleControlEvent(this);
        event.childID = -1;
        int i = 0;
        while (i < this.accessibleControlListeners.size()) {
            AccessibleControlListener listener = (AccessibleControlListener)this.accessibleControlListeners.elementAt(i);
            listener.getRole(event);
            ++i;
        }
        return event.detail;
    }

    int getDefaultRole() {
        int role = 10;
        if (this.iaccessible != null) {
            int varChild = OS.GlobalAlloc(64, VARIANT.sizeof);
            this.setIntVARIANT(varChild, (short)3, 0);
            int pvarRole = OS.GlobalAlloc(64, VARIANT.sizeof);
            int code = this.iaccessible.get_accRole(varChild, pvarRole);
            if (code == 0) {
                VARIANT v = this.getVARIANT(pvarRole);
                if (v.vt == 3) {
                    role = v.lVal;
                }
            }
            OS.GlobalFree(varChild);
            OS.GlobalFree(pvarRole);
        }
        return role;
    }

    String getString(int psz) {
        int[] ptr = new int[1];
        OS.MoveMemory(ptr, psz, OS.PTR_SIZEOF);
        int size = COM.SysStringByteLen(ptr[0]);
        if (size == 0) {
            return "";
        }
        char[] buffer = new char[(size + 1) / 2];
        OS.MoveMemory(buffer, ptr[0], size);
        return new String(buffer);
    }

    VARIANT getVARIANT(int variant) {
        VARIANT v = new VARIANT();
        COM.MoveMemory(v, variant, VARIANT.sizeof);
        return v;
    }

    Number getNumberVARIANT(int variant) {
        VARIANT v = new VARIANT();
        COM.MoveMemory(v, variant, VARIANT.sizeof);
        if (v.vt == 20) {
            return new Long(v.lVal);
        }
        return new Integer(v.lVal);
    }

    void setIntVARIANT(int variant, short vt, int lVal) {
        if (vt == 3 || vt == 0) {
            COM.MoveMemory(variant, new short[]{vt}, 2);
            COM.MoveMemory(variant + 8, new int[]{lVal}, 4);
        }
    }

    void setPtrVARIANT(int variant, short vt, int lVal) {
        if (vt == 9 || vt == 13) {
            COM.MoveMemory(variant, new short[]{vt}, 2);
            COM.MoveMemory(variant + 8, new int[]{lVal}, OS.PTR_SIZEOF);
        }
    }

    void setNumberVARIANT(int variant, Number number) {
        if (number == null) {
            COM.MoveMemory(variant, new short[1], 2);
            COM.MoveMemory(variant + 8, new int[1], 4);
        } else if (number instanceof Double) {
            COM.MoveMemory(variant, new short[]{5}, 2);
            COM.MoveMemory(variant + 8, new double[]{number.doubleValue()}, 8);
        } else if (number instanceof Float) {
            COM.MoveMemory(variant, new short[]{4}, 2);
            COM.MoveMemory(variant + 8, new float[]{number.floatValue()}, 4);
        } else if (number instanceof Long) {
            COM.MoveMemory(variant, new short[]{20}, 2);
            COM.MoveMemory(variant + 8, new long[]{number.longValue()}, 8);
        } else {
            COM.MoveMemory(variant, new short[]{3}, 2);
            COM.MoveMemory(variant + 8, new int[]{number.intValue()}, 4);
        }
    }

    void setString(int psz, String string) {
        int ptr = 0;
        if (string != null) {
            char[] data = (String.valueOf(string) + "\u0000").toCharArray();
            ptr = COM.SysAllocString(data);
        }
        COM.MoveMemory(psz, new int[]{ptr}, OS.PTR_SIZEOF);
    }

    void setStringVARIANT(int variant, String string) {
        int ptr = 0;
        if (string != null) {
            char[] data = (String.valueOf(string) + "\u0000").toCharArray();
            ptr = COM.SysAllocString(data);
        }
        COM.MoveMemory(variant, new short[]{ptr == 0 ? (short)0 : 8}, 2);
        COM.MoveMemory(variant + 8, new int[]{ptr}, OS.PTR_SIZEOF);
    }

    void checkWidget() {
        if (!this.isValidThread()) {
            SWT.error(22);
        }
        if (this.control.isDisposed()) {
            SWT.error(24);
        }
    }

    boolean isValidThread() {
        return this.control.getDisplay().getThread() == Thread.currentThread();
    }

    static void print(String str) {
    }

    String getRoleString(int role) {
        return "Unknown role (" + role + ")";
    }

    String getStateString(int state) {
        if (state == 0) {
            return " no state bits set";
        }
        StringBuffer stateString = new StringBuffer();
        return stateString.toString();
    }

    String getIA2StatesString(int ia2States) {
        if (ia2States == 0) {
            return " no state bits set";
        }
        StringBuffer stateString = new StringBuffer();
        return stateString.toString();
    }

    String getEventString(int event) {
        return "Unknown event (" + event + ")";
    }

    private String hresult(int code) {
        return " HRESULT=" + code;
    }

    boolean interesting(GUID guid) {
        return false;
    }

    String guidString(GUID guid) {
        return guid.toString();
    }

    static GUID IIDFromString(String lpsz) {
        return null;
    }

    public String toString() {
        String toString = super.toString();
        return toString;
    }
}

