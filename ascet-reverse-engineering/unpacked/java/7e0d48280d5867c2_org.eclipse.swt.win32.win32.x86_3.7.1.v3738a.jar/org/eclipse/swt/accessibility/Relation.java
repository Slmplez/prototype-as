/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.win32.OS;

class Relation {
    Accessible accessible;
    COMObject objIAccessibleRelation;
    int refCount;
    int type;
    Accessible[] targets;
    static final String[] relationTypeString = new String[]{"controlledBy", "controllerFor", "describedBy", "descriptionFor", "embeddedBy", "embeds", "flowsFrom", "flowsTo", "labelFor", "labelledBy", "memberOf", "nodeChildOf", "parentWindowOf", "popupFor", "subwindowOf"};
    static final String[] localizedRelationTypeString = new String[]{SWT.getMessage("SWT_Controlled_By"), SWT.getMessage("SWT_Controller_For"), SWT.getMessage("SWT_Described_By"), SWT.getMessage("SWT_Description_For"), SWT.getMessage("SWT_Embedded_By"), SWT.getMessage("SWT_Embeds"), SWT.getMessage("SWT_Flows_From"), SWT.getMessage("SWT_Flows_To"), SWT.getMessage("SWT_Label_For"), SWT.getMessage("SWT_Labelled_By"), SWT.getMessage("SWT_Member_Of"), SWT.getMessage("SWT_Node_Child_Of"), SWT.getMessage("SWT_Parent_Window_Of"), SWT.getMessage("SWT_Popup_For"), SWT.getMessage("SWT_Subwindow_Of")};

    Relation(Accessible accessible, int type) {
        this.accessible = accessible;
        this.type = type;
        this.targets = new Accessible[0];
        this.AddRef();
    }

    int getAddress() {
        if (this.objIAccessibleRelation == null) {
            this.createIAccessibleRelation();
        }
        return this.objIAccessibleRelation.getAddress();
    }

    void createIAccessibleRelation() {
        int[] nArray = new int[8];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 1;
        nArray[5] = 1;
        nArray[6] = 2;
        nArray[7] = 3;
        this.objIAccessibleRelation = new COMObject(nArray){

            public int method0(int[] args) {
                return Relation.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Relation.this.AddRef();
            }

            public int method2(int[] args) {
                return Relation.this.Release();
            }

            public int method3(int[] args) {
                return Relation.this.get_relationType(args[0]);
            }

            public int method4(int[] args) {
                return Relation.this.get_localizedRelationType(args[0]);
            }

            public int method5(int[] args) {
                return Relation.this.get_nTargets(args[0]);
            }

            public int method6(int[] args) {
                return Relation.this.get_target(args[0], args[1]);
            }

            public int method7(int[] args) {
                return Relation.this.get_targets(args[0], args[1], args[2]);
            }
        };
    }

    int QueryInterface(int iid, int ppvObject) {
        GUID guid = new GUID();
        COM.MoveMemory(guid, iid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIAccessibleRelation)) {
            COM.MoveMemory(ppvObject, new int[]{this.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
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
            if (this.objIAccessibleRelation != null) {
                this.objIAccessibleRelation.dispose();
            }
            this.objIAccessibleRelation = null;
        }
        return this.refCount;
    }

    int get_relationType(int pbstrRelationType) {
        this.setString(pbstrRelationType, relationTypeString[this.type]);
        return 0;
    }

    int get_localizedRelationType(int pbstrLocalizedRelationType) {
        this.setString(pbstrLocalizedRelationType, localizedRelationTypeString[this.type]);
        return 0;
    }

    int get_nTargets(int pNTargets) {
        COM.MoveMemory(pNTargets, new int[]{this.targets.length}, 4);
        return 0;
    }

    int get_target(int targetIndex, int ppTarget) {
        if (targetIndex < 0 || targetIndex >= this.targets.length) {
            return -2147024809;
        }
        Accessible target = this.targets[targetIndex];
        target.AddRef();
        COM.MoveMemory(ppTarget, new int[]{target.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    int get_targets(int maxTargets, int ppTargets, int pNTargets) {
        int count = Math.min(this.targets.length, maxTargets);
        int i = 0;
        while (i < count) {
            Accessible target = this.targets[i];
            target.AddRef();
            COM.MoveMemory(ppTargets + i * OS.PTR_SIZEOF, new int[]{target.getAddress()}, OS.PTR_SIZEOF);
            ++i;
        }
        COM.MoveMemory(pNTargets, new int[]{count}, 4);
        return 0;
    }

    void addTarget(Accessible target) {
        if (this.containsTarget(target)) {
            return;
        }
        Accessible[] newTargets = new Accessible[this.targets.length + 1];
        System.arraycopy(this.targets, 0, newTargets, 0, this.targets.length);
        newTargets[this.targets.length] = target;
        this.targets = newTargets;
    }

    boolean containsTarget(Accessible target) {
        int i = 0;
        while (i < this.targets.length) {
            if (this.targets[i] == target) {
                return true;
            }
            ++i;
        }
        return false;
    }

    void removeTarget(Accessible target) {
        if (!this.containsTarget(target)) {
            return;
        }
        Accessible[] newTargets = new Accessible[this.targets.length - 1];
        int j = 0;
        int i = 0;
        while (i < this.targets.length) {
            if (this.targets[i] != target) {
                newTargets[j++] = this.targets[i];
            }
            ++i;
        }
        this.targets = newTargets;
    }

    boolean hasTargets() {
        return this.targets.length > 0;
    }

    void setString(int psz, String string) {
        char[] data = (String.valueOf(string) + "\u0000").toCharArray();
        int ptr = COM.SysAllocString(data);
        COM.MoveMemory(psz, new int[]{ptr}, OS.PTR_SIZEOF);
    }
}

