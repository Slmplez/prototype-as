/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.actions.SimpleWildcardTester;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.osgi.framework.Bundle;

public final class SelectionEnabler {
    public static final int ANY_NUMBER = -2;
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private static Class iTextSelectionClass;
    private static final String JFACE_TEXT_PLUG_IN = "org.eclipse.jface.text";
    public static final int MULTIPLE = -5;
    public static final int NONE = -4;
    public static final int NONE_OR_ONE = -3;
    public static final int ONE_OR_MORE = -1;
    private static final String TEXT_SELECTION_CLASS = "org.eclipse.jface.text.ITextSelection";
    private static boolean textSelectionPossible;
    public static final int UNKNOWN = 0;
    private List classes = new ArrayList();
    private ActionExpression enablementExpression;
    private transient int hashCode = -1;
    private int mode = 0;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.SelectionEnabler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
        iTextSelectionClass = null;
        textSelectionPossible = true;
    }

    private static Class getTextSelectionClass() {
        if (iTextSelectionClass != null) {
            return iTextSelectionClass;
        }
        if (!textSelectionPossible) {
            return null;
        }
        Bundle bundle = Platform.getBundle((String)JFACE_TEXT_PLUG_IN);
        if (bundle == null || bundle.getState() == 1) {
            textSelectionPossible = false;
            return null;
        }
        if (bundle.getState() == 2) {
            textSelectionPossible = true;
            return null;
        }
        try {
            Class c;
            iTextSelectionClass = c = bundle.loadClass(TEXT_SELECTION_CLASS);
            return iTextSelectionClass;
        }
        catch (ClassNotFoundException classNotFoundException) {
            textSelectionPossible = false;
            return null;
        }
    }

    public static boolean verifyNameMatch(String name, String filter) {
        return SimpleWildcardTester.testWildcardIgnoreCase(filter, name);
    }

    public SelectionEnabler(IConfigurationElement configElement) {
        if (configElement == null) {
            throw new IllegalArgumentException();
        }
        this.parseClasses(configElement);
    }

    public final boolean equals(Object object) {
        if (object instanceof SelectionEnabler) {
            SelectionEnabler that = (SelectionEnabler)object;
            return Util.equals(this.classes, that.classes) && Util.equals(this.enablementExpression, that.enablementExpression) && Util.equals(this.mode, that.mode);
        }
        return false;
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL * 89 + Util.hashCode(this.classes);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.enablementExpression);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.mode);
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    private boolean isEnabledFor(ISelection sel) {
        int count;
        ISelection obj = sel;
        int n = count = sel.isEmpty() ? 0 : 1;
        if (!this.verifySelectionCount(count)) {
            return false;
        }
        if (this.enablementExpression != null) {
            return this.enablementExpression.isEnabledFor(obj);
        }
        if (this.classes.isEmpty()) {
            return true;
        }
        if (obj instanceof IAdaptable) {
            IAdaptable element = (IAdaptable)obj;
            return this.verifyElement(element);
        }
        return false;
    }

    private boolean isEnabledFor(ISelection sel, int count) {
        if (!this.verifySelectionCount(count)) {
            return false;
        }
        if (this.enablementExpression != null) {
            return this.enablementExpression.isEnabledFor(sel);
        }
        if (this.classes.isEmpty()) {
            return true;
        }
        int i = 0;
        while (i < this.classes.size()) {
            SelectionClass sc = (SelectionClass)this.classes.get(i);
            if (this.verifyClass(sel, sc.className)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isEnabledFor(IStructuredSelection ssel) {
        int count = ssel.size();
        if (!this.verifySelectionCount(count)) {
            return false;
        }
        if (this.enablementExpression != null) {
            return this.enablementExpression.isEnabledFor(ssel);
        }
        if (this.classes.isEmpty()) {
            return true;
        }
        Iterator elements = ssel.iterator();
        while (elements.hasNext()) {
            Object obj = elements.next();
            if (obj instanceof IAdaptable) {
                IAdaptable element = (IAdaptable)obj;
                if (this.verifyElement(element)) continue;
                return false;
            }
            return false;
        }
        return true;
    }

    public boolean isEnabledForSelection(ISelection selection) {
        if (this.mode == 0) {
            return false;
        }
        if (selection == null) {
            selection = StructuredSelection.EMPTY;
        }
        if (selection instanceof IStructuredSelection) {
            return this.isEnabledFor((IStructuredSelection)selection);
        }
        Class tselClass = SelectionEnabler.getTextSelectionClass();
        if (tselClass != null && tselClass.isInstance(selection)) {
            try {
                Method m = tselClass.getDeclaredMethod("getLength", new Class[0]);
                Object r = m.invoke(selection, new Object[0]);
                if (r instanceof Integer) {
                    return this.isEnabledFor(selection, (Integer)r);
                }
                return true;
            }
            catch (NoSuchMethodException noSuchMethodException) {
            }
            catch (IllegalAccessException illegalAccessException) {
            }
            catch (InvocationTargetException invocationTargetException) {}
        }
        return this.isEnabledFor(selection);
    }

    private void parseClasses(IConfigurationElement config) {
        String enablesFor = config.getAttribute("enablesFor");
        if (enablesFor == null) {
            enablesFor = "*";
        }
        if (enablesFor.equals("*")) {
            this.mode = -2;
        } else if (enablesFor.equals("?")) {
            this.mode = -3;
        } else if (enablesFor.equals("!")) {
            this.mode = -4;
        } else if (enablesFor.equals("+")) {
            this.mode = -1;
        } else if (enablesFor.equals("multiple") || enablesFor.equals("2+")) {
            this.mode = -5;
        } else {
            try {
                this.mode = Integer.parseInt(enablesFor);
            }
            catch (NumberFormatException numberFormatException) {
                this.mode = 0;
            }
        }
        IConfigurationElement[] children = config.getChildren("enablement");
        if (children.length > 0) {
            this.enablementExpression = new ActionExpression(children[0]);
            return;
        }
        children = config.getChildren("selection");
        if (children.length > 0) {
            this.classes = new ArrayList();
            int i = 0;
            while (i < children.length) {
                IConfigurationElement sel = children[i];
                String cname = sel.getAttribute("class");
                String name = sel.getAttribute("name");
                SelectionClass sclass = new SelectionClass();
                sclass.className = cname;
                sclass.nameFilter = name;
                this.classes.add(sclass);
                ++i;
            }
        }
    }

    private boolean verifyClass(Object element, String className) {
        Class<?> eclass;
        Class<?> clazz = eclass = element.getClass();
        boolean match = false;
        while (clazz != null) {
            if (clazz.getName().equals(className)) {
                match = true;
                break;
            }
            Class<?>[] interfaces = clazz.getInterfaces();
            int i = 0;
            while (i < interfaces.length) {
                if (interfaces[i].getName().equals(className)) {
                    match = true;
                    break;
                }
                ++i;
            }
            if (match) break;
            clazz = clazz.getSuperclass();
        }
        return match;
    }

    private boolean verifyElement(IAdaptable element) {
        if (this.classes.isEmpty()) {
            return true;
        }
        int i = 0;
        while (i < this.classes.size()) {
            SelectionClass sc = (SelectionClass)this.classes.get(i);
            if (this.verifyClass(element, sc.className)) {
                IWorkbenchAdapter de;
                if (sc.nameFilter == null) {
                    return true;
                }
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((de = (IWorkbenchAdapter)Util.getAdapter(element, clazz)) != null && SelectionEnabler.verifyNameMatch(de.getLabel(element), sc.nameFilter)) {
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    private boolean verifySelectionCount(int count) {
        if (count > 0 && this.mode == -4) {
            return false;
        }
        if (count == 0 && this.mode == -1) {
            return false;
        }
        if (count > 1 && this.mode == -3) {
            return false;
        }
        if (count < 2 && this.mode == -5) {
            return false;
        }
        return this.mode <= 0 || count == this.mode;
    }

    static class SelectionClass {
        public String className;
        public String nameFilter;
        public boolean recursive;

        SelectionClass() {
        }
    }
}

