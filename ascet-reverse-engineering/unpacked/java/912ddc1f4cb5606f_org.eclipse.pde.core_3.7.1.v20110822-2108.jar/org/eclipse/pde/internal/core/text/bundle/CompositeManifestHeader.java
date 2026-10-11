/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import java.util.Vector;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.bundle.BundleObject;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PDEManifestElement;
import org.osgi.framework.BundleException;

public class CompositeManifestHeader
extends ManifestHeader {
    private static final PDEManifestElement[] NO_ELEMENTS = new PDEManifestElement[0];
    private static final long serialVersionUID = 1L;
    private boolean fSort;
    protected ArrayList fManifestElements;
    protected Map fElementMap;

    public CompositeManifestHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        this(name, value, bundle, lineDelimiter, false);
    }

    public CompositeManifestHeader(String name, String value, IBundle bundle, String lineDelimiter, boolean sort) {
        this.fName = name;
        this.fBundle = bundle;
        this.fLineDelimiter = lineDelimiter;
        this.setModel(this.fBundle.getModel());
        this.fSort = sort;
        this.fValue = value;
        this.processValue(value);
    }

    protected void processValue(String value) {
        try {
            ManifestElement[] elements = ManifestElement.parseHeader((String)this.fName, (String)value);
            int i = 0;
            while (i < elements.length) {
                this.addManifestElement(this.createElement(elements[i]), false);
                ++i;
            }
        }
        catch (BundleException bundleException) {}
    }

    protected PDEManifestElement createElement(ManifestElement element) {
        return new PDEManifestElement((ManifestHeader)this, element);
    }

    public void update() {
        this.update(false);
    }

    public void update(boolean notify) {
        StringBuffer sb = new StringBuffer();
        PDEManifestElement[] elements = this.getElements();
        int i = 0;
        while (i < elements.length) {
            if (sb.length() > 0) {
                sb.append(",");
                sb.append(this.fLineDelimiter);
                sb.append(" ");
            }
            sb.append(elements[i].write());
            ++i;
        }
        String old = this.fValue;
        this.fValue = sb.toString();
        if (notify) {
            this.firePropertyChanged(this, this.fName, old, this.fValue);
        }
    }

    protected void addManifestElement(String value) {
        this.addManifestElement(new PDEManifestElement((ManifestHeader)this, value));
    }

    protected void addManifestElement(String value, int index) {
        PDEManifestElement element = new PDEManifestElement((ManifestHeader)this, value);
        this.addManifestElement(element, index, true);
    }

    protected void addManifestElement(PDEManifestElement element) {
        this.addManifestElement(element, true);
    }

    protected void addManifestElements(PDEManifestElement[] elements) {
        int i = 0;
        while (i < elements.length) {
            this.addManifestElement(elements[i], false);
            ++i;
        }
        this.update(false);
        this.fireStructureChanged(elements, 1);
    }

    protected void addManifestElement(PDEManifestElement element, boolean update) {
        element.setModel(this.getModel());
        element.setHeader(this);
        if (this.fSort) {
            if (this.fElementMap == null) {
                this.fElementMap = new TreeMap();
            }
            this.fElementMap.put(element.getValue(), element);
        } else {
            if (this.fManifestElements == null) {
                this.fManifestElements = new ArrayList(1);
            }
            this.fManifestElements.add(element);
        }
        if (update) {
            this.update(false);
            this.fireStructureChanged(element, 1);
        }
    }

    protected Object removeManifestElement(PDEManifestElement element) {
        return this.removeManifestElement(element.getValue());
    }

    protected Object removeManifestElement(String name) {
        Object object = null;
        if (this.fSort) {
            if (this.fElementMap != null) {
                object = this.fElementMap.remove(name);
            }
        } else if (this.fManifestElements != null) {
            int i = 0;
            while (i < this.fManifestElements.size()) {
                PDEManifestElement element = (PDEManifestElement)this.fManifestElements.get(i);
                if (name.equals(element.getValue())) {
                    object = this.fManifestElements.remove(i);
                }
                ++i;
            }
        }
        this.update(false);
        if (object instanceof BundleObject) {
            this.fireStructureChanged((BundleObject)object, 2);
        }
        return object;
    }

    public PDEManifestElement[] getElements() {
        if (this.fSort && this.fElementMap != null) {
            return this.fElementMap.values().toArray(new PDEManifestElement[this.fElementMap.size()]);
        }
        if (this.fManifestElements != null) {
            return this.fManifestElements.toArray(new PDEManifestElement[this.fManifestElements.size()]);
        }
        return NO_ELEMENTS;
    }

    public boolean isEmpty() {
        if (this.fSort) {
            return this.fElementMap == null || this.fElementMap.size() == 0;
        }
        return this.fManifestElements == null || this.fManifestElements.size() == 0;
    }

    public boolean hasElement(String name) {
        if (this.fSort && this.fElementMap != null) {
            return this.fElementMap.containsKey(name);
        }
        if (this.fManifestElements != null) {
            int i = 0;
            while (i < this.fManifestElements.size()) {
                PDEManifestElement element = (PDEManifestElement)this.fManifestElements.get(i);
                if (name.equals(element.getValue())) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public Vector getElementNames() {
        PDEManifestElement[] elements = this.getElements();
        Vector<String> vector = new Vector<String>(elements.length);
        int i = 0;
        while (i < elements.length) {
            vector.add(elements[i].getValue());
            ++i;
        }
        return vector;
    }

    public void swap(int index1, int index2) {
        if (this.fSort || this.fManifestElements == null) {
            return;
        }
        int size = this.fManifestElements.size();
        if (index1 >= 0 && index2 >= 0 && size > Math.max(index1, index2)) {
            Object object1 = this.fManifestElements.get(index1);
            Object object2 = this.fManifestElements.get(index2);
            this.fManifestElements.set(index1, object2);
            this.fManifestElements.set(index2, object1);
            this.update(true);
        }
    }

    protected PDEManifestElement getElementAt(int index) {
        if (this.fManifestElements != null && this.fManifestElements.size() > index) {
            return (PDEManifestElement)this.fManifestElements.get(index);
        }
        return null;
    }

    public PDEManifestElement getPreviousElement(PDEManifestElement targetElement) {
        if (this.fSort) {
            return null;
        }
        if (this.fManifestElements == null) {
            return null;
        }
        if (this.fManifestElements.size() <= 1) {
            return null;
        }
        int targetIndex = this.fManifestElements.indexOf(targetElement);
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex == 0) {
            return null;
        }
        PDEManifestElement previousElement = (PDEManifestElement)this.fManifestElements.get(targetIndex - 1);
        return previousElement;
    }

    public PDEManifestElement getNextElement(PDEManifestElement targetElement) {
        if (this.fSort) {
            return null;
        }
        if (this.fManifestElements == null) {
            return null;
        }
        if (this.fManifestElements.size() <= 1) {
            return null;
        }
        int targetIndex = this.fManifestElements.indexOf(targetElement);
        int lastIndex = this.fManifestElements.size() - 1;
        if (targetIndex < 0) {
            return null;
        }
        if (targetIndex >= lastIndex) {
            return null;
        }
        PDEManifestElement nextElement = (PDEManifestElement)this.fManifestElements.get(targetIndex + 1);
        return nextElement;
    }

    protected void addManifestElement(PDEManifestElement element, int index, boolean update) {
        int elementCount = 0;
        if (this.fManifestElements != null) {
            elementCount = this.fManifestElements.size();
        }
        if (this.fSort) {
            return;
        }
        if (index < 0) {
            return;
        }
        if (index > elementCount) {
            return;
        }
        element.setModel(this.getModel());
        element.setHeader(this);
        if (this.fManifestElements == null) {
            this.fManifestElements = new ArrayList(1);
            this.fManifestElements.add(element);
        } else {
            this.fManifestElements.add(index, element);
        }
        if (update) {
            this.update(false);
            this.fireStructureChanged(element, 1);
        }
    }

    public int indexOf(PDEManifestElement targetElement) {
        if (this.fSort) {
            return -1;
        }
        if (this.fManifestElements == null) {
            return -1;
        }
        return this.fManifestElements.indexOf(targetElement);
    }

    protected PDEManifestElement removeManifestElement(PDEManifestElement element, boolean update) {
        if (this.fSort) {
            return null;
        }
        if (this.fManifestElements == null) {
            return null;
        }
        if (this.fManifestElements.size() == 0) {
            return null;
        }
        boolean removed = this.fManifestElements.remove(element);
        PDEManifestElement removedElement = null;
        if (removed) {
            removedElement = element;
        }
        if (update) {
            this.update(false);
            this.fireStructureChanged(removedElement, 2);
        }
        return removedElement;
    }
}

