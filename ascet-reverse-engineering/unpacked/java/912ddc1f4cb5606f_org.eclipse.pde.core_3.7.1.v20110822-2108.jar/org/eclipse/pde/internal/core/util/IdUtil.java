/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.StringTokenizer;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.text.plugin.PluginExtensionPointNode;

public class IdUtil {
    public static boolean isValidCompositeID(String name) {
        if (name.length() <= 0) {
            return false;
        }
        int i = 0;
        while (i < name.length()) {
            char c = name.charAt(i);
            if (!(c >= 'A' && 'Z' >= c || c >= 'a' && 'z' >= c || c >= '0' && '9' >= c || c == '_' || i != 0 && i != name.length() - 1 && c == '.')) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean isValidCompositeID3_0(String name) {
        if (name.length() <= 0) {
            return false;
        }
        int i = 0;
        while (i < name.length()) {
            char c = name.charAt(i);
            if (!(c >= 'A' && 'Z' >= c || c >= 'a' && 'z' >= c || c >= '0' && '9' >= c || c == '_' || c == '-' || i != 0 && i != name.length() - 1 && c == '.')) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static boolean isValidSimpleID(String name) {
        if (name.length() <= 0) {
            return false;
        }
        int i = 0;
        while (i < name.length()) {
            char c = name.charAt(i);
            if (!(c >= 'A' && 'Z' >= c || c >= 'a' && 'z' >= c || c >= '0' && '9' >= c || c == '_')) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static String getValidId(String projectName) {
        return projectName.replaceAll("[^a-zA-Z0-9\\._-]", "_");
    }

    public static String getValidName(String id) {
        StringTokenizer tok = new StringTokenizer(id, ".");
        while (tok.hasMoreTokens()) {
            String token = tok.nextToken();
            if (tok.hasMoreTokens()) continue;
            String name = String.valueOf(Character.toUpperCase(token.charAt(0))) + (token.length() > 1 ? token.substring(1) : "");
            return name;
        }
        return "";
    }

    public static String getValidProvider(String id) {
        StringTokenizer tok = new StringTokenizer(id, ".");
        int count = tok.countTokens();
        if (count > 2 && tok.nextToken().equals("com")) {
            return tok.nextToken().toUpperCase();
        }
        return "";
    }

    public static String getFullId(IPluginExtension extension) {
        String id = extension.getId();
        IPluginBase plugin = extension.getPluginBase();
        String schemaVersion = plugin.getSchemaVersion();
        if (schemaVersion != null && Double.parseDouble(schemaVersion) >= 3.2 && id.indexOf(46) > 0) {
            return id;
        }
        if (plugin instanceof IFragment) {
            return String.valueOf(((IFragment)plugin).getPluginId()) + '.' + id;
        }
        return String.valueOf(plugin.getId()) + '.' + id;
    }

    public static String getFullId(IPluginExtensionPoint point, IPluginModelBase model) {
        if (point instanceof PluginExtensionPointNode && model != null) {
            IFragment fragment;
            String pointId = point.getId();
            String schemaVersion = model.getPluginBase().getSchemaVersion();
            if (schemaVersion != null && Double.parseDouble(schemaVersion) >= 3.2 && pointId.indexOf(46) > 0) {
                return pointId;
            }
            String id = null;
            if (model instanceof IFragmentModel && (fragment = ((IFragmentModel)model).getFragment()) != null) {
                id = fragment.getPluginId();
            }
            if (id == null) {
                id = model.getPluginBase().getId();
            }
            return String.valueOf(id) + '.' + pointId;
        }
        return point.getFullId();
    }

    public static boolean isInterestingExtensionPoint(String point) {
        return "org.eclipse.pde.core.source".equals(point) || "org.eclipse.core.runtime.products".equals(point) || "org.eclipse.pde.core.javadoc".equals(point) || "org.eclipse.ui.intro".equals(point);
    }
}

