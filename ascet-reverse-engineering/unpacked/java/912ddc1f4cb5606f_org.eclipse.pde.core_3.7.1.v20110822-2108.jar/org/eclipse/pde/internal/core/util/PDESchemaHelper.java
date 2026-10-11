/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 */
package org.eclipse.pde.internal.core.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaEnumeration;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaRestriction;
import org.eclipse.pde.internal.core.ischema.ISchemaRootElement;

public class PDESchemaHelper {
    public static Map getValidAttributes(ISchemaAttribute attribute) {
        HashMap<String, Object> attributeMap = new HashMap<String, Object>();
        PDESchemaHelper.gatherAttributes(attributeMap, attribute.getBasedOn());
        ISchemaRestriction restriction = attribute.getType().getRestriction();
        if (restriction != null) {
            Object[] children = restriction.getChildren();
            int i = 0;
            while (i < children.length) {
                ISchemaEnumeration enumeration;
                String value;
                Object child = children[i];
                if (child instanceof ISchemaEnumeration && (value = (enumeration = (ISchemaEnumeration)child).getName()) != null && value.length() > 0) {
                    attributeMap.put(value, null);
                }
                ++i;
            }
        }
        return attributeMap;
    }

    public static String getReferenceIdentifier(ISchemaAttribute attribute) {
        String rootId = attribute.getSchema().getSchemaDescriptor().getPointId();
        String refId = String.valueOf(PDESchemaHelper.buildBasedOnValue(attribute.getParent())) + "/@" + attribute.getName();
        return String.valueOf(rootId) + refId;
    }

    private static void gatherAttributes(Map attributesInfo, String basedOn) {
        if (basedOn == null) {
            return;
        }
        String[] path = basedOn.split("/");
        IExtension[] extensions = PDECore.getDefault().getExtensionsRegistry().findExtensions(path[0], true);
        ArrayList<IConfigurationElement> members = new ArrayList<IConfigurationElement>();
        int i = 0;
        while (i < extensions.length) {
            if (path.length == 2) {
                attributesInfo.put(extensions[i].getUniqueIdentifier(), null);
            } else {
                IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < elements.length) {
                    if (elements[j].getName().equals(path[1])) {
                        members.add(elements[j]);
                    }
                    ++j;
                }
            }
            ++i;
        }
        ArrayList<IConfigurationElement> parents = members;
        int i2 = 2;
        while (i2 < path.length) {
            if (path[i2].startsWith("@")) {
                String attName = path[i2].substring(1);
                Iterator iterator = parents.iterator();
                while (iterator.hasNext()) {
                    IConfigurationElement element = (IConfigurationElement)iterator.next();
                    String value = element.getAttribute(attName);
                    if (value == null) continue;
                    String extpt = element.getDeclaringExtension().getExtensionPointUniqueIdentifier();
                    if (value.indexOf(46) == -1 && extpt.equalsIgnoreCase("org.eclipse.core.contenttype.contentTypes")) {
                        attributesInfo.put(String.valueOf(element.getNamespaceIdentifier()) + '.' + value, element);
                    }
                    attributesInfo.put(value, element);
                }
                return;
            }
            members = new ArrayList();
            Iterator iterator = parents.iterator();
            while (iterator.hasNext()) {
                IConfigurationElement element = (IConfigurationElement)iterator.next();
                members.addAll(PDESchemaHelper.keepGoing(element, path[i2]));
            }
            parents = members;
            ++i2;
        }
    }

    private static List keepGoing(IConfigurationElement element, String tag) {
        return Arrays.asList(element.getChildren(tag));
    }

    private static String buildBasedOnValue(ISchemaObject object) {
        if (object instanceof ISchemaElement && !(object instanceof ISchemaRootElement)) {
            ISchemaElement element = (ISchemaElement)object;
            ISchema schema = element.getSchema();
            ISchemaElement[] elements = schema.getElements();
            int i = 0;
            while (i < elements.length) {
                ISchemaElement[] children = schema.getCandidateChildren(elements[i]);
                int j = 0;
                while (j < children.length) {
                    if (object.getName().equals(children[j].getName())) {
                        return String.valueOf(PDESchemaHelper.buildBasedOnValue(elements[i])) + '/' + object.getName();
                    }
                    ++j;
                }
                ++i;
            }
        }
        return "";
    }
}

