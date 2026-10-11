/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.util.StringTokenizer
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.emf.validation.util;

import com.ibm.icu.util.StringTokenizer;
import java.net.URL;
import java.util.ArrayList;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.ConstraintsConfigurationElement;
import org.eclipse.emf.validation.internal.util.ConstraintsContentHandler;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlConfigurationElement;
import org.eclipse.emf.validation.internal.util.XmlConstraintDescriptor;
import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.model.CategoryManager;
import org.eclipse.emf.validation.service.ConstraintExistsException;
import org.xml.sax.helpers.DefaultHandler;

public class XmlConfig {
    public static final String E_CONSTRAINT_PROVIDER = "constraintProvider";
    public static final String A_ID = "id";
    public static final String A_MODE = "mode";
    public static final String A_CACHE = "cache";
    public static final String E_PACKAGE = "package";
    public static final String A_NAMESPACE_URI = "namespaceUri";
    public static final String E_CONSTRAINTS = "constraints";
    public static final String A_CATEGORIES = "categories";
    public static final String E_INCLUDED_CONSTRAINTS = "includedConstraints";
    public static final String E_CONSTRAINT = "constraint";
    public static final String A_LANG = "lang";
    public static final String A_SEVERITY = "severity";
    public static final String A_STATUS_CODE = "statusCode";
    public static final String A_CLASS = "class";
    public static final String A_IS_ENABLED_BY_DEFAULT = "isEnabledByDefault";
    public static final String E_INCLUDE = "include";
    public static final String A_PATH = "path";
    public static final String E_TARGET = "target";
    public static final String E_EVENT = "event";
    public static final String E_CUSTOM_EVENT = "customEvent";
    public static final String A_NAME = "name";
    public static final String E_FEATURE = "feature";
    public static final String E_DESCRIPTION = "description";
    public static final String E_MESSAGE = "message";
    public static final String E_PARAM = "param";
    public static final String A_VALUE = "value";
    public static final String E_CATEGORY = "category";
    public static final String A_MANDATORY = "mandatory";
    public static final String A_ENABLED = "enabled";

    private XmlConfig() {
    }

    public static IConfigurationElement parseConstraintsWithIncludes(IConfigurationElement constraints) throws CoreException {
        IConfigurationElement[] constraintses;
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.XML)) {
            String sourcePluginId = constraints.getDeclaringExtension().getNamespaceIdentifier();
            Trace.trace(EMFModelValidationDebugOptions.XML, "Loading constraints from plugin: " + sourcePluginId);
        }
        IConfigurationElement result = constraints;
        if (constraints.getName().equals(E_CONSTRAINTS)) {
            result = XmlConfig.resolveCategories(constraints);
        } else if (constraints.getName().equals(E_INCLUDED_CONSTRAINTS) && (constraintses = constraints.getChildren(E_CONSTRAINTS)).length > 0) {
            result = XmlConfig.resolveIncludedConstraints(constraints, constraintses);
        }
        IConfigurationElement[] includes = constraints.getChildren(E_INCLUDE);
        if (includes.length > 0) {
            result = XmlConfig.resolveIncludes(constraints, includes);
        }
        return result;
    }

    public static String getParameter(IConfigurationElement constraint, String name) {
        IConfigurationElement match = null;
        String result = null;
        IConfigurationElement[] parms = constraint.getChildren(E_PARAM);
        int i = 0;
        while (match == null && i < parms.length) {
            if (name.equals(parms[i].getAttribute(A_NAME))) {
                match = parms[i];
            }
            ++i;
        }
        if (match != null && (result = match.getAttribute(A_VALUE)) == null) {
            result = match.getValue();
        }
        return result;
    }

    public static String[] getParameterValues(IConfigurationElement constraint, String name) {
        IConfigurationElement[] parms;
        ArrayList<String> result = new ArrayList<String>();
        IConfigurationElement[] iConfigurationElementArray = parms = constraint.getChildren(E_PARAM);
        int n = parms.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            if (name.equals(element.getAttribute(A_NAME))) {
                String value = element.getAttribute(A_VALUE);
                if (value == null) {
                    value = element.getValue();
                }
                if (value != null) {
                    result.add(value);
                }
            }
            ++n2;
        }
        return result.toArray(new String[result.size()]);
    }

    private static IConfigurationElement resolveCategories(IConfigurationElement constraints) {
        CategoryManager mgr = CategoryManager.getInstance();
        IConfigurationElement[] children = constraints.getChildren(E_CONSTRAINT);
        String categories = constraints.getAttribute(A_CATEGORIES);
        if (categories == null) {
            categories = "";
        }
        ArrayList<Category> categoryList = new ArrayList<Category>(4);
        StringTokenizer tokens = new StringTokenizer(categories, ",");
        while (tokens.hasMoreTokens()) {
            Category category;
            String path = tokens.nextToken().trim();
            if (path.length() <= 0 || (category = mgr.findCategory(path)) == null) continue;
            categoryList.add(category);
        }
        if (!categoryList.isEmpty()) {
            Category[] categoryArray = categoryList.toArray(new Category[categoryList.size()]);
            IConfigurationElement[] iConfigurationElementArray = children;
            int n = children.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement element = iConfigurationElementArray[n2];
                try {
                    XmlConstraintDescriptor constraint = new XmlConstraintDescriptor(element);
                    Category[] categoryArray2 = categoryArray;
                    int n3 = categoryArray.length;
                    int n4 = 0;
                    while (n4 < n3) {
                        Category next = categoryArray2[n4];
                        next.addConstraint(constraint);
                        ++n4;
                    }
                }
                catch (ConstraintExistsException e) {
                    Log.warningMessage(63, EMFModelValidationStatusCodes.PROVIDER_DUPLICATE_CONSTRAINT_MSG, new Object[]{e.getMessage()});
                }
                ++n2;
            }
        }
        return constraints;
    }

    private static IConfigurationElement resolveIncludes(IConfigurationElement constraints, IConfigurationElement[] includes) throws CoreException {
        ConstraintsConfigurationElement result = new ConstraintsConfigurationElement(constraints, XmlConfig.getBaseUrl(constraints));
        result.include(includes);
        return result;
    }

    private static IConfigurationElement resolveIncludedConstraints(IConfigurationElement constraints, IConfigurationElement[] constraintses) throws CoreException {
        ConstraintsConfigurationElement result = new ConstraintsConfigurationElement(constraints, XmlConfig.getBaseUrl(constraints));
        result.flatten(constraintses);
        return result;
    }

    private static URL getBaseUrl(IConfigurationElement element) {
        if (element instanceof XmlConfigurationElement) {
            return ((XmlConfigurationElement)element).getBaseUrl();
        }
        return Platform.getBundle((String)element.getDeclaringExtension().getNamespaceIdentifier()).getEntry("/");
    }

    public static IConfigurationElement load(IConfigurationElement parent, URL url) throws CoreException {
        Trace.trace(EMFModelValidationDebugOptions.XML, "Loading constraints include file: " + url);
        SAXParserFactory spf = SAXParserFactory.newInstance();
        spf.setValidating(false);
        try {
            SAXParser parser = spf.newSAXParser();
            ConstraintsContentHandler handler = new ConstraintsContentHandler(parent.getDeclaringExtension(), url);
            parser.parse(url.toString(), (DefaultHandler)handler);
            IConfigurationElement result = handler.getResult();
            return XmlConfig.parseConstraintsWithIncludes(result);
        }
        catch (CoreException e) {
            throw e;
        }
        catch (Exception e) {
            Trace.catching(XmlConfig.class, "load", e);
            String sourcePluginId = parent.getDeclaringExtension().getNamespaceIdentifier();
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 90, EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.ERROR_PARSING_XML_MSG, sourcePluginId), (Throwable)e));
            Trace.throwing(XmlConfig.class, "load", ce);
            throw ce;
        }
    }

    public static void flushResourceBundles() {
        ConstraintsContentHandler.flushResourceBundleCache();
    }

    public static IConfigurationElement[] getEvents(IConfigurationElement config) {
        IConfigurationElement[] events = config.getChildren(E_EVENT);
        IConfigurationElement[] customEvents = config.getChildren(E_CUSTOM_EVENT);
        IConfigurationElement[] result = new IConfigurationElement[events.length + customEvents.length];
        System.arraycopy(events, 0, result, 0, events.length);
        System.arraycopy(customEvents, 0, result, events.length, customEvents.length);
        return result;
    }
}

