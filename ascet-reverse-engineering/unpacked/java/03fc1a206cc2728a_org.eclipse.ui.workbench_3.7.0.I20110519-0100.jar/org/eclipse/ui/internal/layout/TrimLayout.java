/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.layout;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.layout.ICachingLayout;
import org.eclipse.ui.internal.layout.ITrimManager;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.SizeCache;
import org.eclipse.ui.internal.layout.TrimArea;
import org.eclipse.ui.internal.layout.TrimCommonUIHandle;
import org.eclipse.ui.internal.layout.TrimDescriptor;
import org.eclipse.ui.internal.layout.TrimToolBarBase;

public class TrimLayout
extends Layout
implements ICachingLayout,
ITrimManager {
    public static final Integer TOP_ID = new Integer(128);
    public static final Integer BOTTOM_ID = new Integer(1024);
    public static final Integer LEFT_ID = new Integer(16384);
    public static final Integer RIGHT_ID = new Integer(131072);
    public static final Integer NONTRIM_ID = new Integer(-1);
    private static final int[] TRIM_ID_INFO = new int[]{16384, 131072, 128, 1024};
    private SizeCache centerArea = new SizeCache();
    private Map fTrimArea = new HashMap();
    private Map fTrimDescriptors = new HashMap();
    private boolean trimLocked;
    private HashMap preferredLocationMap = new HashMap();

    public TrimLayout() {
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        this.trimLocked = store.getBoolean("LOCK_TRIM");
        this.createTrimArea(TOP_ID, TOP_ID.toString());
        this.createTrimArea(BOTTOM_ID, BOTTOM_ID.toString());
        this.createTrimArea(LEFT_ID, LEFT_ID.toString());
        this.createTrimArea(RIGHT_ID, RIGHT_ID.toString());
    }

    private void createTrimArea(Integer id, String displayName) {
        TrimArea top = new TrimArea(id, displayName);
        this.fTrimArea.put(id, top);
    }

    public int getTrimAreaId(Control trimControl) {
        TrimDescriptor desc = this.findTrimDescription(trimControl);
        if (desc != null) {
            return desc.getAreaId();
        }
        return -1;
    }

    public void addTrim(IWindowTrim control, int areaId) {
        this.addTrim(areaId, control, null);
    }

    public void addTrim(IWindowTrim trim, int areaId, IWindowTrim beforeMe) {
        this.addTrim(areaId, trim, beforeMe);
    }

    public void addTrim(int areaId, IWindowTrim trim) {
        IWindowTrim insertBefore = null;
        List trimDescs = this.getAreaTrim(areaId);
        Iterator trimIter = trimDescs.iterator();
        while (trimIter.hasNext()) {
            IWindowTrim curTrim = (IWindowTrim)trimIter.next();
            if (!curTrim.getId().equals(trim.getId()) || !trimIter.hasNext()) continue;
            insertBefore = (IWindowTrim)trimIter.next();
        }
        this.addTrim(areaId, trim, insertBefore);
    }

    public void addTrim(int areaId, IWindowTrim trim, IWindowTrim beforeMe) {
        TrimArea area = (TrimArea)this.fTrimArea.get(new Integer(areaId));
        if (area == null) {
            return;
        }
        this.removeTrim(trim);
        TrimDescriptor desc = new TrimDescriptor(trim, areaId);
        boolean isAlreadyAHandle = trim instanceof TrimToolBarBase;
        if (!this.trimLocked && trim.getValidSides() != 0 && !isAlreadyAHandle) {
            TrimCommonUIHandle dockingHandle = new TrimCommonUIHandle(this, trim, areaId);
            desc.setDockingCache(new SizeCache((Control)dockingHandle));
        }
        SizeCache cache = new SizeCache(trim.getControl());
        trim.getControl().setLayoutData((Object)trim);
        desc.setCache(cache);
        trim.getControl().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                Control control = (Control)e.widget;
                if (control.getLayoutData() instanceof IWindowTrim) {
                    IWindowTrim trim = (IWindowTrim)control.getLayoutData();
                    TrimLayout.this.removeTrim(trim);
                }
            }
        });
        this.fTrimDescriptors.put(desc.getId(), desc);
        if (beforeMe != null) {
            TrimDescriptor beforeDesc = (TrimDescriptor)this.fTrimDescriptors.get(beforeMe.getId());
            if (beforeDesc != null && beforeDesc.getAreaId() == areaId) {
                area.addTrim(desc, beforeDesc);
            } else {
                area.addTrim(desc);
            }
        } else {
            area.addTrim(desc);
        }
    }

    public void forceLayout() {
        this.removeDisposed();
        Iterator d = this.fTrimDescriptors.values().iterator();
        while (d.hasNext()) {
            TrimDescriptor desc = (TrimDescriptor)d.next();
            if (desc.getTrim().getControl() == null) continue;
            LayoutUtil.resize(desc.getTrim().getControl());
            return;
        }
    }

    public void removeTrim(IWindowTrim toRemove) {
        TrimDescriptor desc = (TrimDescriptor)this.fTrimDescriptors.remove(toRemove.getId());
        if (desc == null) {
            return;
        }
        TrimArea area = (TrimArea)this.fTrimArea.get(new Integer(desc.getAreaId()));
        if (area != null) {
            area.removeTrim(desc);
            desc.getCache().getControl().setLayoutData(null);
        }
        if (desc.getDockingCache() != null) {
            Control ctrl = desc.getDockingCache().getControl();
            ctrl.setVisible(false);
            desc.setDockingCache(null);
        }
    }

    public IWindowTrim getTrim(String id) {
        TrimDescriptor desc = (TrimDescriptor)this.fTrimDescriptors.get(id);
        if (desc != null) {
            return desc.getTrim();
        }
        return null;
    }

    private void removeDisposed() {
        Iterator a = this.fTrimArea.values().iterator();
        while (a.hasNext()) {
            TrimArea area = (TrimArea)a.next();
            Iterator d = area.getDescriptors().iterator();
            while (d.hasNext()) {
                TrimDescriptor desc = (TrimDescriptor)d.next();
                Control nextControl = desc.getTrim().getControl();
                if (nextControl != null && !nextControl.isDisposed()) continue;
                area.removeTrim(desc);
                this.fTrimDescriptors.remove(desc.getId());
            }
        }
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        return new Point(0, 0);
    }

    protected void layout(Composite composite, boolean flushCache) {
        this.removeDisposed();
        TrimArea top = (TrimArea)this.fTrimArea.get(TOP_ID);
        TrimArea bottom = (TrimArea)this.fTrimArea.get(BOTTOM_ID);
        TrimArea left = (TrimArea)this.fTrimArea.get(LEFT_ID);
        TrimArea right = (TrimArea)this.fTrimArea.get(RIGHT_ID);
        Rectangle clientArea = composite.getClientArea();
        int trim_top = top.computeWrappedTrim(clientArea.width);
        int trim_bottom = bottom.computeWrappedTrim(clientArea.width);
        int verticalMajor = clientArea.height - (trim_top + trim_bottom);
        int trim_left = left.computeWrappedTrim(verticalMajor);
        int trim_right = right.computeWrappedTrim(verticalMajor);
        top.tileTrim(clientArea.x, clientArea.y, clientArea.width);
        bottom.tileTrim(clientArea.x, clientArea.height - trim_bottom, clientArea.width);
        left.tileTrim(clientArea.x, clientArea.y + trim_top, verticalMajor);
        right.tileTrim(clientArea.width - trim_right, clientArea.y + trim_top, verticalMajor);
        if (this.centerArea.getControl() != null) {
            Control caCtrl = this.centerArea.getControl();
            caCtrl.setBounds(clientArea.x + trim_left, clientArea.y + trim_top, clientArea.width - (trim_left + trim_right), clientArea.height - (trim_top + trim_bottom));
        }
    }

    public void setCenterControl(Control center) {
        this.centerArea.setControl(center);
    }

    public Control getCenterControl() {
        return this.centerArea.getControl();
    }

    public void flush(Control dirtyControl) {
        if (dirtyControl == this.centerArea.getControl()) {
            this.centerArea.flush();
        } else {
            TrimDescriptor desc = this.findTrimDescription(dirtyControl);
            if (desc != null) {
                desc.flush();
            }
        }
    }

    public int[] getAreaIds() {
        return (int[])TRIM_ID_INFO.clone();
    }

    public List getAreaTrim(int areaId) {
        TrimArea area = (TrimArea)this.fTrimArea.get(new Integer(areaId));
        if (area == null) {
            return Collections.EMPTY_LIST;
        }
        return area.getTrims();
    }

    public void updateAreaTrim(int id, List trim, boolean removeExtra) {
        IWindowTrim t;
        TrimArea area = (TrimArea)this.fTrimArea.get(new Integer(id));
        if (area == null) {
            return;
        }
        List current = area.getTrims();
        Iterator i = trim.iterator();
        while (i.hasNext()) {
            t = (IWindowTrim)i.next();
            t.dock(id);
            this.addTrim(id, t, null);
            current.remove(t);
        }
        if (removeExtra) {
            i = current.iterator();
            while (i.hasNext()) {
                t = (IWindowTrim)i.next();
                this.removeTrim(t);
            }
        }
    }

    public Rectangle getTrimRect(Composite window, int areaId) {
        TrimArea area = this.getTrimArea(areaId);
        return window.getDisplay().map((Control)window, null, area.getCurRect());
    }

    public List getAllTrim() {
        ArrayList<IWindowTrim> trimList = new ArrayList<IWindowTrim>(this.fTrimDescriptors.size());
        Iterator d = this.fTrimDescriptors.values().iterator();
        while (d.hasNext()) {
            TrimDescriptor desc = (TrimDescriptor)d.next();
            trimList.add(desc.getTrim());
        }
        return trimList;
    }

    public void setTrimVisible(IWindowTrim trim, boolean visible) {
        TrimDescriptor desc = this.findTrimDescription(trim.getControl());
        if (desc != null) {
            desc.setVisible(visible);
        }
    }

    private TrimDescriptor findTrimDescription(Control trim) {
        Iterator d = this.fTrimDescriptors.values().iterator();
        while (d.hasNext()) {
            TrimDescriptor desc = (TrimDescriptor)d.next();
            if (desc.getTrim().getControl() == trim) {
                return desc;
            }
            if (desc.getDockingCache() == null || desc.getDockingCache().getControl() != trim) continue;
            return desc;
        }
        return null;
    }

    public TrimArea getTrimArea(int areaId) {
        return (TrimArea)this.fTrimArea.get(new Integer(areaId));
    }

    public void setPreferredLocations(int areaId, List preferredLocations) {
        this.preferredLocationMap.put(new Integer(areaId), preferredLocations);
    }

    public int getPreferredArea(String trimId) {
        Iterator keyIter = this.preferredLocationMap.keySet().iterator();
        while (keyIter.hasNext()) {
            Integer key = (Integer)keyIter.next();
            List areaList = (List)this.preferredLocationMap.get(key);
            if (!areaList.contains(trimId)) continue;
            return key;
        }
        return -1;
    }

    public IWindowTrim getPreferredLocation(String trimId) {
        Iterator keyIter = this.preferredLocationMap.keySet().iterator();
        while (keyIter.hasNext()) {
            Integer key = (Integer)keyIter.next();
            List areaList = (List)this.preferredLocationMap.get(key);
            int index = areaList.indexOf(trimId);
            if (index == -1) continue;
            int i = index + 1;
            while (i < areaList.size()) {
                String id = (String)areaList.get(i);
                IWindowTrim trim = this.getTrim(id);
                if (trim != null) {
                    return trim;
                }
                ++i;
            }
        }
        return null;
    }

    public List disableTrim(IWindowTrim ignoreMe) {
        ArrayList<Control> disabledControls = new ArrayList<Control>();
        List allTrim = this.getAllTrim();
        Iterator trimIter = allTrim.iterator();
        while (trimIter.hasNext()) {
            Control ctrl;
            IWindowTrim trim = (IWindowTrim)trimIter.next();
            if (ignoreMe == trim || (ctrl = trim.getControl()) == null || ctrl.isDisposed() || !ctrl.isVisible() || !ctrl.isEnabled()) continue;
            ctrl.setEnabled(false);
            disabledControls.add(ctrl);
        }
        return disabledControls;
    }

    public void enableTrim(List disabledControls) {
        Iterator dcIter = disabledControls.iterator();
        while (dcIter.hasNext()) {
            Control ctrl = (Control)dcIter.next();
            if (ctrl.isDisposed() || ctrl.isEnabled()) continue;
            ctrl.setEnabled(true);
        }
    }
}

