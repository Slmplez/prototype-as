/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.util.Util
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.TreeSet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class Util {
    public static final SortedMap EMPTY_SORTED_MAP = Collections.unmodifiableSortedMap(new TreeMap());
    public static final SortedSet EMPTY_SORTED_SET = Collections.unmodifiableSortedSet(new TreeSet());
    public static final String ZERO_LENGTH_STRING = "";
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    public static String safeString(String input) {
        if (input != null) {
            return input;
        }
        return ZERO_LENGTH_STRING;
    }

    public static Object getAdapter(Object sourceObject, Class adapterType) {
        Object result;
        IAdaptable adaptable;
        Object result2;
        Assert.isNotNull((Object)adapterType);
        if (sourceObject == null) {
            return null;
        }
        if (adapterType.isInstance(sourceObject)) {
            return sourceObject;
        }
        if (sourceObject instanceof IAdaptable && (result2 = (adaptable = (IAdaptable)sourceObject).getAdapter(adapterType)) != null) {
            Assert.isTrue((boolean)adapterType.isInstance(result2));
            return result2;
        }
        if (!(sourceObject instanceof PlatformObject) && (result = Platform.getAdapterManager().getAdapter(sourceObject, adapterType)) != null) {
            return result;
        }
        return null;
    }

    public static void assertInstance(Object object, Class c) {
        Util.assertInstance(object, c, false);
    }

    public static void assertInstance(Object object, Class c, boolean allowNull) {
        if (object == null && allowNull) {
            return;
        }
        if (object == null || c == null) {
            throw new NullPointerException();
        }
        if (!c.isInstance(object)) {
            throw new IllegalArgumentException();
        }
    }

    public static int compare(boolean left, boolean right) {
        return !left ? (right ? -1 : 0) : 1;
    }

    public static int compare(Comparable left, Comparable right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        return left.compareTo(right);
    }

    public static int compare(Comparable[] left, Comparable[] right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        int l = left.length;
        int r = right.length;
        if (l != r) {
            return l - r;
        }
        int i = 0;
        while (i < l) {
            int compareTo = Util.compare(left[i], right[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            ++i;
        }
        return 0;
    }

    public static int compare(int left, int right) {
        return left - right;
    }

    public static int compare(List left, List right) {
        int r;
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        int l = left.size();
        if (l != (r = right.size())) {
            return l - r;
        }
        int i = 0;
        while (i < l) {
            int compareTo = Util.compare((Comparable)left.get(i), (Comparable)right.get(i));
            if (compareTo != 0) {
                return compareTo;
            }
            ++i;
        }
        return 0;
    }

    public static int compare(Object left, Object right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        if (left == right) {
            return 0;
        }
        return Util.compare(System.identityHashCode(left), System.identityHashCode(right));
    }

    public static final int compareIdentity(Object left, Object right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        return System.identityHashCode(left) - System.identityHashCode(right);
    }

    public static void diff(Map left, Map right, Set leftOnly, Set different, Set rightOnly) {
        Object key;
        if (left == null || right == null || leftOnly == null || different == null || rightOnly == null) {
            throw new NullPointerException();
        }
        Iterator iterator = left.keySet().iterator();
        while (iterator.hasNext()) {
            key = iterator.next();
            if (!right.containsKey(key)) {
                leftOnly.add(key);
                continue;
            }
            if (Util.equals(left.get(key), right.get(key))) continue;
            different.add(key);
        }
        iterator = right.keySet().iterator();
        while (iterator.hasNext()) {
            key = iterator.next();
            if (left.containsKey(key)) continue;
            rightOnly.add(key);
        }
    }

    public static void diff(Set left, Set right, Set leftOnly, Set rightOnly) {
        Object object;
        if (left == null || right == null || leftOnly == null || rightOnly == null) {
            throw new NullPointerException();
        }
        Iterator iterator = left.iterator();
        while (iterator.hasNext()) {
            object = iterator.next();
            if (right.contains(object)) continue;
            leftOnly.add(object);
        }
        iterator = right.iterator();
        while (iterator.hasNext()) {
            object = iterator.next();
            if (left.contains(object)) continue;
            rightOnly.add(object);
        }
    }

    public static boolean endsWith(List left, List right, boolean equals) {
        if (left == null || right == null) {
            return false;
        }
        int l = left.size();
        int r = right.size();
        if (r > l || !equals && r == l) {
            return false;
        }
        int i = 0;
        while (i < r) {
            if (!Util.equals(left.get(l - i - 1), right.get(r - i - 1))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean endsWith(Object[] left, Object[] right, boolean equals) {
        if (left == null || right == null) {
            return false;
        }
        int r = right.length;
        int l = left.length;
        if (r > l || !equals && r == l) {
            return false;
        }
        int i = 0;
        while (i < r) {
            if (!Util.equals(left[l - i - 1], right[r - i - 1])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean equals(boolean left, boolean right) {
        return left == right;
    }

    public static boolean equals(int left, int right) {
        return left == right;
    }

    public static boolean equals(Object left, Object right) {
        return left == null ? right == null : right != null && left.equals(right);
    }

    public static final boolean equals(Object[] leftArray, Object[] rightArray) {
        if (leftArray == rightArray) {
            return true;
        }
        if (leftArray == null) {
            return rightArray == null;
        }
        if (rightArray == null) {
            return false;
        }
        if (leftArray.length != rightArray.length) {
            return false;
        }
        int i = 0;
        while (i < leftArray.length) {
            boolean equal;
            Object left = leftArray[i];
            Object right = rightArray[i];
            boolean bl = left == null ? right == null : (equal = left.equals(right));
            if (!equal) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static int hashCode(boolean b) {
        return b ? Boolean.TRUE.hashCode() : Boolean.FALSE.hashCode();
    }

    public static int hashCode(int i) {
        return i;
    }

    public static int hashCode(Object object) {
        return object != null ? object.hashCode() : 0;
    }

    public static Collection safeCopy(Collection collection, Class c) {
        return Util.safeCopy(collection, c, false);
    }

    public static Collection safeCopy(Collection collection, Class c, boolean allowNullElements) {
        if (collection == null || c == null) {
            throw new NullPointerException();
        }
        collection = Collections.unmodifiableCollection(new ArrayList(collection));
        Iterator iterator = collection.iterator();
        while (iterator.hasNext()) {
            Util.assertInstance(iterator.next(), c, allowNullElements);
        }
        return collection;
    }

    public static List safeCopy(List list, Class c) {
        return Util.safeCopy(list, c, false);
    }

    public static List safeCopy(List list, Class c, boolean allowNullElements) {
        if (list == null || c == null) {
            throw new NullPointerException();
        }
        list = Collections.unmodifiableList(new ArrayList(list));
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            Util.assertInstance(iterator.next(), c, allowNullElements);
        }
        return list;
    }

    public static Map safeCopy(Map map, Class keyClass, Class valueClass) {
        return Util.safeCopy(map, keyClass, valueClass, false, false);
    }

    public static Map safeCopy(Map map, Class keyClass, Class valueClass, boolean allowNullKeys, boolean allowNullValues) {
        if (map == null || keyClass == null || valueClass == null) {
            throw new NullPointerException();
        }
        map = Collections.unmodifiableMap(new HashMap(map));
        Iterator iterator = map.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            Util.assertInstance(entry.getKey(), keyClass, allowNullKeys);
            Util.assertInstance(entry.getValue(), valueClass, allowNullValues);
        }
        return map;
    }

    public static Set safeCopy(Set set, Class c) {
        return Util.safeCopy(set, c, false);
    }

    public static Set safeCopy(Set set, Class c, boolean allowNullElements) {
        if (set == null || c == null) {
            throw new NullPointerException();
        }
        set = Collections.unmodifiableSet(new HashSet(set));
        Iterator iterator = set.iterator();
        while (iterator.hasNext()) {
            Util.assertInstance(iterator.next(), c, allowNullElements);
        }
        return set;
    }

    public static SortedMap safeCopy(SortedMap sortedMap, Class keyClass, Class valueClass) {
        return Util.safeCopy(sortedMap, keyClass, valueClass, false, false);
    }

    public static SortedMap safeCopy(SortedMap sortedMap, Class keyClass, Class valueClass, boolean allowNullKeys, boolean allowNullValues) {
        if (sortedMap == null || keyClass == null || valueClass == null) {
            throw new NullPointerException();
        }
        sortedMap = Collections.unmodifiableSortedMap(new TreeMap(sortedMap));
        Iterator iterator = sortedMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            Util.assertInstance(entry.getKey(), keyClass, allowNullKeys);
            Util.assertInstance(entry.getValue(), valueClass, allowNullValues);
        }
        return sortedMap;
    }

    public static SortedSet safeCopy(SortedSet sortedSet, Class c) {
        return Util.safeCopy(sortedSet, c, false);
    }

    public static SortedSet safeCopy(SortedSet sortedSet, Class c, boolean allowNullElements) {
        if (sortedSet == null || c == null) {
            throw new NullPointerException();
        }
        sortedSet = Collections.unmodifiableSortedSet(new TreeSet(sortedSet));
        Iterator iterator = sortedSet.iterator();
        while (iterator.hasNext()) {
            Util.assertInstance(iterator.next(), c, allowNullElements);
        }
        return sortedSet;
    }

    public static boolean startsWith(List left, List right, boolean equals) {
        if (left == null || right == null) {
            return false;
        }
        int l = left.size();
        int r = right.size();
        if (r > l || !equals && r == l) {
            return false;
        }
        int i = 0;
        while (i < r) {
            if (!Util.equals(left.get(i), right.get(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean startsWith(Object[] left, Object[] right, boolean equals) {
        if (left == null || right == null) {
            return false;
        }
        int r = right.length;
        int l = left.length;
        if (r > l || !equals && r == l) {
            return false;
        }
        int i = 0;
        while (i < r) {
            if (!Util.equals(left[i], right[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static String translateString(ResourceBundle resourceBundle, String key) {
        return Util.translateString(resourceBundle, key, key, true, true);
    }

    public static String translateString(ResourceBundle resourceBundle, String key, String string, boolean signal, boolean trim) {
        block4: {
            if (resourceBundle != null && key != null) {
                try {
                    String translatedString = resourceBundle.getString(key);
                    if (translatedString != null) {
                        return trim ? translatedString.trim() : translatedString;
                    }
                }
                catch (MissingResourceException eMissingResource) {
                    if (!signal) break block4;
                    WorkbenchPlugin.log(eMissingResource);
                }
            }
        }
        return trim ? string.trim() : string;
    }

    public static void arrayCopyWithRemoval(Object[] src, Object[] dst, int idxToRemove) {
        if (src == null || dst == null || src.length - 1 != dst.length || idxToRemove < 0 || idxToRemove >= src.length) {
            throw new IllegalArgumentException();
        }
        if (idxToRemove == 0) {
            System.arraycopy(src, 1, dst, 0, src.length - 1);
        } else if (idxToRemove == src.length - 1) {
            System.arraycopy(src, 0, dst, 0, src.length - 1);
        } else {
            System.arraycopy(src, 0, dst, 0, idxToRemove);
            System.arraycopy(src, idxToRemove + 1, dst, idxToRemove, src.length - idxToRemove - 1);
        }
    }

    public static Object[] appendArray(Object[] array1, Object[] array2) {
        Object[] result = new Object[array1.length + array2.length];
        System.arraycopy(array1, 0, result, 0, array1.length);
        System.arraycopy(array2, 0, result, array1.length, array2.length);
        return result;
    }

    private Util() {
    }

    public static String intern(String string) {
        return string == null ? null : string.intern();
    }

    public static String[] getArrayFromList(String prop, String separator) {
        if (prop == null || prop.trim().equals(ZERO_LENGTH_STRING)) {
            return new String[0];
        }
        ArrayList<String> list = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(prop, separator);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals(ZERO_LENGTH_STRING)) continue;
            list.add(token);
        }
        return list.isEmpty() ? new String[]{} : list.toArray(new String[list.size()]);
    }

    public static String createList(String item1, String item2) {
        return NLS.bind((String)WorkbenchMessages.Util_List, (Object)item1, (Object)item2);
    }

    public static String createList(List items) {
        String list = null;
        Iterator i = items.iterator();
        while (i.hasNext()) {
            Object object = i.next();
            String string = object == null ? WorkbenchMessages.Util_listNull : object.toString();
            list = list == null ? string : Util.createList(list, string);
        }
        return Util.safeString(list);
    }

    public static String createList(Object[] items) {
        String list = null;
        int i = 0;
        while (i < items.length) {
            list = list == null ? items[i].toString() : Util.createList(list, items[i].toString());
            ++i;
        }
        return Util.safeString(list);
    }

    public static IWorkbenchWindow getWorkbenchWindowForShell(Shell shellToCheck) {
        IWorkbenchWindow workbenchWindow = null;
        while (workbenchWindow == null && shellToCheck != null) {
            if (shellToCheck.getData() instanceof IWorkbenchWindow) {
                workbenchWindow = (IWorkbenchWindow)shellToCheck.getData();
                continue;
            }
            shellToCheck = (Shell)shellToCheck.getParent();
        }
        if (workbenchWindow == null) {
            workbenchWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        }
        return workbenchWindow;
    }

    public static Shell getShellToParentOn() {
        IWorkbench workbench = PlatformUI.getWorkbench();
        IWorkbenchWindow activeWindow = workbench.getActiveWorkbenchWindow();
        IWorkbenchWindow windowToParentOn = activeWindow == null ? (workbench.getWorkbenchWindowCount() > 0 ? workbench.getWorkbenchWindows()[0] : null) : activeWindow;
        return windowToParentOn == null ? null : activeWindow.getShell();
    }

    public static String[] split(String src, char delim) {
        if (src == null) {
            return EMPTY_STRING_ARRAY;
        }
        if (src.length() == 0) {
            return new String[]{ZERO_LENGTH_STRING};
        }
        ArrayList<String> result = new ArrayList<String>();
        int idx = src.indexOf(delim);
        int lastIdx = 0;
        while (idx != -1) {
            result.add(src.substring(lastIdx, idx));
            lastIdx = idx + 1;
            idx = lastIdx == src.length() ? -1 : src.indexOf(delim, lastIdx);
        }
        if (lastIdx < src.length()) {
            result.add(src.substring(lastIdx));
        }
        String[] resultArray = result.toArray(new String[result.size()]);
        boolean allEmpty = true;
        int i = 0;
        while (i < resultArray.length && allEmpty) {
            if (resultArray[i].length() > 0) {
                allEmpty = false;
            }
            ++i;
        }
        if (allEmpty) {
            return EMPTY_STRING_ARRAY;
        }
        return resultArray;
    }

    public static String replaceAll(String src, String find, String replacement) {
        return org.eclipse.jface.util.Util.replaceAll((String)src, (String)find, (String)replacement);
    }

    public static Object safeLoadExecutableExtension(IConfigurationElement element, String attName, Class classSpec) {
        Object loadedEE = null;
        try {
            loadedEE = element.createExecutableExtension(attName);
        }
        catch (CoreException e) {
            String classDef = element.getAttribute(attName);
            String message = "Class load Failure: '" + classDef + "'";
            Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
            WorkbenchPlugin.log(message, (IStatus)status);
        }
        if (classSpec != null && loadedEE != null && !classSpec.isInstance(loadedEE)) {
            String message = "Loaded class is of incorrect type: expected(" + classSpec.getName() + ") got (" + loadedEE.getClass().getName() + ")";
            IllegalArgumentException e = new IllegalArgumentException(message);
            Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
            WorkbenchPlugin.log(message, (IStatus)status);
            loadedEE = null;
        }
        return loadedEE;
    }
}

