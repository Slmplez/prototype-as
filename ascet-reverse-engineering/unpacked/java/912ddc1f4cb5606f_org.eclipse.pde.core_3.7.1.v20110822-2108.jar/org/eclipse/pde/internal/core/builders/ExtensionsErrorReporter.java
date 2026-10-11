/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.ElementOccurenceChecker;
import org.eclipse.pde.internal.core.builders.ElementOccurrenceResult;
import org.eclipse.pde.internal.core.builders.ManifestErrorReporter;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaComplexType;
import org.eclipse.pde.internal.core.ischema.ISchemaCompositor;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaEnumeration;
import org.eclipse.pde.internal.core.ischema.ISchemaObject;
import org.eclipse.pde.internal.core.ischema.ISchemaObjectReference;
import org.eclipse.pde.internal.core.ischema.ISchemaRestriction;
import org.eclipse.pde.internal.core.ischema.ISchemaRootElement;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;
import org.eclipse.pde.internal.core.ischema.ISchemaType;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.schema.SchemaRegistry;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.eclipse.pde.internal.core.util.IdUtil;
import org.eclipse.pde.internal.core.util.PDEJavaHelper;
import org.eclipse.pde.internal.core.util.PDESchemaHelper;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class ExtensionsErrorReporter
extends ManifestErrorReporter {
    private IPluginModelBase fModel;
    private IBuild fBuildModel;

    public ExtensionsErrorReporter(IFile file) {
        super(file);
        this.fModel = PluginRegistry.findModel(file.getProject());
        try {
            if (this.fModel != null && this.fModel.getUnderlyingResource() != null) {
                this.fBuildModel = ClasspathUtilCore.getBuild(this.fModel);
            }
        }
        catch (CoreException coreException) {}
    }

    public void characters(char[] characters, int start, int length) throws SAXException {
    }

    public void validateContent(IProgressMonitor monitor) {
        Element element = this.getDocumentRoot();
        if (element == null) {
            return;
        }
        String elementName = element.getNodeName();
        if (!"plugin".equals(elementName) && !"fragment".equals(elementName)) {
            this.reportIllegalElement(element, 0);
        } else {
            IExtensions extensions;
            int i;
            int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
            if (severity != 2) {
                NamedNodeMap attrs = element.getAttributes();
                i = 0;
                while (i < attrs.getLength()) {
                    this.reportUnusedAttribute(element, attrs.item(i).getNodeName(), severity);
                    ++i;
                }
            }
            NodeList children = element.getChildNodes();
            i = 0;
            while (i < children.getLength()) {
                if (monitor.isCanceled()) break;
                Element child = (Element)children.item(i);
                String name = child.getNodeName();
                if (name.equals("extension")) {
                    this.validateExtension(child);
                } else if (name.equals("extension-point")) {
                    this.validateExtensionPoint(child);
                } else if (!name.equals("runtime") && !name.equals("requires")) {
                    severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
                    if (severity != 2) {
                        this.reportIllegalElement(child, severity);
                    }
                } else {
                    severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
                    if (severity != 2) {
                        this.reportUnusedElement(child, severity);
                    }
                }
                ++i;
            }
            if ((extensions = this.fModel.getExtensions()) != null && extensions.getExtensions().length == 0 && extensions.getExtensionPoints().length == 0) {
                this.report(PDECoreMessages.Builders_Manifest_useless_file, -1, 1, 12292, "");
            }
        }
    }

    protected void validateExtension(Element element) {
        if (!this.assertAttributeDefined(element, "point", 0)) {
            return;
        }
        String pointID = element.getAttribute("point");
        if (!PDECore.getDefault().getExtensionsRegistry().hasExtensionPoint(pointID)) {
            int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unresolved-ex-points");
            if (severity != 2) {
                this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_ex_point, (Object)pointID), this.getLine(element, "point"), severity, "");
            }
        } else {
            SchemaRegistry reg = PDECore.getDefault().getSchemaRegistry();
            ISchema schema = reg.getSchema(pointID);
            if (schema != null) {
                this.validateElement(element, schema, true);
            }
        }
    }

    private void reportMaxOccurenceViolation(ElementOccurrenceResult result, int severity) {
        Element childElement = result.getElement();
        String allowedOccurrences = new Integer(result.getAllowedOccurrences()).toString();
        String message = NLS.bind((String)PDECoreMessages.ExtensionsErrorReporter_maxOccurrence, (Object[])new String[]{allowedOccurrences, childElement.getNodeName()});
        this.report(message, this.getLine(childElement), severity, 12289, childElement, null, "fatal");
    }

    private void reportMinOccurenceViolation(Element parentElement, ElementOccurrenceResult result, int severity) {
        ISchemaElement childElement = result.getSchemaElement();
        String allowedOccurrences = new Integer(result.getAllowedOccurrences()).toString();
        String message = NLS.bind((String)PDECoreMessages.ExtensionsErrorReporter_minOccurrence, (Object[])new String[]{allowedOccurrences, childElement.getName()});
        this.report(message, this.getLine(parentElement), severity, "fatal");
    }

    protected void validateElement(Element element, ISchema schema, boolean isTopLevel) {
        int severity;
        String elementName = element.getNodeName();
        ISchemaElement schemaElement = schema.findElement(elementName);
        if (schemaElement != null && schemaElement.getType() instanceof ISchemaComplexType) {
            this.validateMaxElementMult(element, schemaElement);
            this.validateMinElementMult(element, schemaElement);
        }
        ISchemaElement parentSchema = null;
        if (!"extension".equals(elementName)) {
            Node parent = element.getParentNode();
            parentSchema = schema.findElement(parent.getNodeName());
        } else if (!isTopLevel) {
            int severity2 = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
            this.reportIllegalElement(element, severity2);
            return;
        }
        if (parentSchema != null && (severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element")) != 2) {
            HashSet allowedElements = new HashSet();
            this.computeAllowedElements(parentSchema.getType(), allowedElements);
            if (!allowedElements.contains(elementName)) {
                this.reportIllegalElement(element, severity);
                return;
            }
        }
        if (schemaElement == null && parentSchema != null) {
            ISchemaAttribute attr = parentSchema.getAttribute(elementName);
            if (attr != null && attr.getKind() == 1) {
                if (attr.isDeprecated()) {
                    this.reportDeprecatedAttribute(element, element.getAttributeNode("class"));
                }
                this.validateJavaAttribute(element, element.getAttributeNode("class"));
            }
        } else {
            if (schemaElement != null) {
                this.validateRequiredExtensionAttributes(element, schemaElement);
                this.validateExistingExtensionAttributes(element, element.getAttributes(), schemaElement);
                this.validateInternalExtensionAttribute(element, schemaElement);
                if (schemaElement.isDeprecated()) {
                    if (schemaElement instanceof ISchemaRootElement) {
                        this.reportDeprecatedRootElement(element, ((ISchemaRootElement)schemaElement).getDeprecatedSuggestion());
                    } else {
                        this.reportDeprecatedElement(element);
                    }
                }
                if (schemaElement.hasTranslatableContent()) {
                    this.validateTranslatableElementContent(element);
                }
                schema = schemaElement.getSchema();
            }
            NodeList children = element.getChildNodes();
            int i = 0;
            while (i < children.getLength()) {
                this.validateElement((Element)children.item(i), schema, false);
                ++i;
            }
        }
    }

    private void validateInternalExtensionAttribute(Element element, ISchemaElement schemaElement) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.internal");
        if (severity == 2) {
            return;
        }
        if (schemaElement instanceof ISchemaRootElement) {
            ISchemaRootElement rootElement = (ISchemaRootElement)schemaElement;
            String epid = schemaElement.getSchema().getPluginId();
            String pid = this.fModel.getPluginBase().getId();
            if (epid == null || pid == null) {
                return;
            }
            if (rootElement.isInternal() && !epid.equals(pid)) {
                String point = element.getAttribute("point");
                if (point == null) {
                    return;
                }
                this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_internal_rootElement, (Object)point), this.getLine(element, "point"), severity, "deprecation");
            }
        }
    }

    private void validateMinElementMult(Element element, ISchemaElement schemaElement) {
        int minSeverity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
        if (minSeverity != 2) {
            HashSet minElementSet = ElementOccurenceChecker.findMinOccurenceViolations(schemaElement, element);
            Iterator minIterator = minElementSet.iterator();
            while (minIterator.hasNext()) {
                this.reportMinOccurenceViolation(element, (ElementOccurrenceResult)minIterator.next(), minSeverity);
            }
        }
    }

    private void validateMaxElementMult(Element element, ISchemaElement schemaElement) {
        int maxSeverity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
        if (maxSeverity != 2) {
            HashSet maxElementSet = ElementOccurenceChecker.findMaxOccurenceViolations(schemaElement, element);
            Iterator maxIterator = maxElementSet.iterator();
            while (maxIterator.hasNext()) {
                this.reportMaxOccurenceViolation((ElementOccurrenceResult)maxIterator.next(), maxSeverity);
            }
        }
    }

    private void computeAllowedElements(ISchemaType type, HashSet elementSet) {
        if (type instanceof ISchemaComplexType) {
            ISchemaComplexType complexType = (ISchemaComplexType)type;
            ISchemaCompositor compositor = complexType.getCompositor();
            if (compositor != null) {
                this.computeAllowedElements(compositor, elementSet);
            }
            ISchemaAttribute[] attrs = complexType.getAttributes();
            int i = 0;
            while (i < attrs.length) {
                if (attrs[i].getKind() == 1) {
                    elementSet.add(attrs[i].getName());
                }
                ++i;
            }
        }
    }

    private void computeAllowedElements(ISchemaCompositor compositor, HashSet elementSet) {
        ISchemaObject[] children = compositor.getChildren();
        int i = 0;
        while (i < children.length) {
            ISchemaObject child = children[i];
            if (child instanceof ISchemaObjectReference) {
                ISchemaObjectReference ref = (ISchemaObjectReference)((Object)child);
                ISchemaElement refElement = (ISchemaElement)ref.getReferencedObject();
                if (refElement != null) {
                    elementSet.add(refElement.getName());
                }
            } else if (child instanceof ISchemaCompositor) {
                this.computeAllowedElements((ISchemaCompositor)child, elementSet);
            }
            ++i;
        }
    }

    private void validateRequiredExtensionAttributes(Element element, ISchemaElement schemaElement) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.no-required-att");
        if (severity == 2) {
            return;
        }
        ISchemaAttribute[] attInfos = schemaElement.getAttributes();
        int i = 0;
        while (i < attInfos.length) {
            ISchemaAttribute attInfo = attInfos[i];
            if (attInfo.getUse() == 1) {
                boolean found;
                boolean bl = found = element.getAttributeNode(attInfo.getName()) != null;
                if (!found && attInfo.getKind() == 1) {
                    NodeList children = element.getChildNodes();
                    int j = 0;
                    while (j < children.getLength()) {
                        if (attInfo.getName().equals(children.item(j).getNodeName())) {
                            found = true;
                            break;
                        }
                        ++j;
                    }
                }
                if (!found) {
                    this.reportMissingRequiredAttribute(element, attInfo.getName(), severity);
                }
            }
            ++i;
        }
    }

    private void validateExistingExtensionAttributes(Element element, NamedNodeMap attrs, ISchemaElement schemaElement) {
        int i = 0;
        while (i < attrs.getLength()) {
            Attr attr = (Attr)attrs.item(i);
            ISchemaAttribute attInfo = schemaElement.getAttribute(attr.getName());
            if (attInfo == null) {
                HashSet allowedElements = new HashSet();
                this.computeAllowedElements(schemaElement.getType(), allowedElements);
                if (allowedElements.contains(attr.getName())) {
                    this.validateJavaAttribute(element, attr);
                } else {
                    int flag = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-attribute");
                    if (flag != 2) {
                        this.reportUnknownAttribute(element, attr.getName(), flag);
                    }
                }
            } else {
                this.validateExtensionAttribute(element, attr, attInfo);
            }
            ++i;
        }
    }

    private void validateExtensionAttribute(Element element, Attr attr, ISchemaAttribute attInfo) {
        ISchemaSimpleType type = attInfo.getType();
        int kind = attInfo.getKind();
        if (kind == 1) {
            this.validateJavaAttribute(element, attr);
        } else if (kind == 2) {
            this.validateResourceAttribute(element, attr);
        } else if (kind == 3) {
            this.validateIdentifierAttribute(element, attr, attInfo);
        } else if (kind == 0) {
            ISchemaRestriction restriction = type.getRestriction();
            if (restriction != null) {
                this.validateRestrictionAttribute(element, attr, restriction);
            }
        } else if (type.getName().equals("boolean")) {
            this.validateBoolean(element, attr);
        }
        this.validateTranslatableString(element, attr, attInfo.isTranslatable());
        if (attInfo.isDeprecated()) {
            this.reportDeprecatedAttribute(element, attr);
        }
    }

    protected void validateExtensionPoint(Element element) {
        Attr attr;
        if (this.assertAttributeDefined(element, "id", 0)) {
            Attr idAttr = element.getAttributeNode("id");
            double schemaVersion = this.getSchemaVersion();
            String message = null;
            if (schemaVersion < 3.2 && !IdUtil.isValidSimpleID(idAttr.getValue())) {
                message = NLS.bind((String)PDECoreMessages.Builders_Manifest_simpleID, (Object)idAttr.getValue());
            } else if (schemaVersion >= 3.2 && !IdUtil.isValidCompositeID(idAttr.getValue())) {
                message = NLS.bind((String)PDECoreMessages.Builders_Manifest_compositeID, (Object)idAttr.getValue());
            }
            if (message != null) {
                this.report(message, this.getLine(element, idAttr.getName()), 1, "");
            }
        }
        this.assertAttributeDefined(element, "name", 0);
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-attribute");
        NamedNodeMap attrs = element.getAttributes();
        int i = 0;
        while (i < attrs.getLength()) {
            Attr attr2 = (Attr)attrs.item(i);
            String name = attr2.getName();
            if ("name".equals(name)) {
                this.validateTranslatableString(element, attr2, true);
            } else if (!"id".equals(name) && !"schema".equals(name) && severity != 2) {
                this.reportUnknownAttribute(element, name, severity);
            }
            ++i;
        }
        severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
        if (severity != 2) {
            NodeList children = element.getChildNodes();
            int i2 = 0;
            while (i2 < children.getLength()) {
                this.reportIllegalElement((Element)children.item(i2), severity);
                ++i2;
            }
        }
        if ((attr = element.getAttributeNode("schema")) != null) {
            String schemaValue = attr.getValue();
            IResource res = this.getFile().getProject().findMember(schemaValue);
            String errorMessage = null;
            if (!(res instanceof IFile) || !res.getName().endsWith(".exsd") && !res.getName().endsWith(".mxsd")) {
                errorMessage = PDECoreMessages.ExtensionsErrorReporter_InvalidSchema;
            }
            if (errorMessage != null && (severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-resource")) != 2) {
                this.report(NLS.bind((String)errorMessage, (Object)schemaValue), this.getLine(element), severity, "");
            }
        }
    }

    protected void validateTranslatableString(Element element, Attr attr, boolean shouldTranslate) {
        NLResourceHelper helper;
        if (!shouldTranslate) {
            return;
        }
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.not-externalized-att");
        if (severity == 2) {
            return;
        }
        String value = attr.getValue();
        if (!value.startsWith("%")) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_non_ext_attribute, (Object)attr.getName()), this.getLine(element, attr.getName()), severity, 12290, element, attr.getName(), "nls");
        } else if (this.fModel instanceof AbstractNLModel && ((helper = ((AbstractNLModel)((Object)this.fModel)).getNLResourceHelper()) == null || !helper.resourceExists(value))) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_key_not_found, (Object)value.substring(1)), this.getLine(element, attr.getName()), severity, "nls");
        }
    }

    protected void validateTranslatableElementContent(Element element) {
        NLResourceHelper helper;
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.not-externalized-att");
        if (severity == 2) {
            return;
        }
        String value = this.getTextContent(element);
        if (value == null) {
            return;
        }
        if (!value.startsWith("%")) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_non_ext_element, (Object)element.getNodeName()), this.getLine(element), severity, 12290, element, null, "nls");
        } else if (this.fModel instanceof AbstractNLModel && ((helper = ((AbstractNLModel)((Object)this.fModel)).getNLResourceHelper()) == null || !helper.resourceExists(value))) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_key_not_found, (Object)value.substring(1)), this.getLine(element), severity, "nls");
        }
    }

    protected void validateResourceAttribute(Element element, Attr attr) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-resource");
        if (severity != 2 && !this.resourceExists(attr.getValue())) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_resource, (Object[])new String[]{attr.getValue(), attr.getName()}), this.getLine(element, attr.getName()), severity, "");
        }
    }

    private boolean resourceExists(String location) {
        String bundleLocation;
        String id;
        IPluginModelBase model;
        String bundleJar = null;
        Path path = new Path(location);
        if ("platform:".equals(path.getDevice()) && path.segmentCount() > 2) {
            if ("plugin".equals(path.segment(0)) && (model = PluginRegistry.findModel(id = path.segment(1))) != null && model.isEnabled()) {
                path = path.setDevice(null).removeFirstSegments(2);
                bundleLocation = model.getInstallLocation();
                if (bundleLocation.endsWith(".jar")) {
                    bundleJar = bundleLocation;
                } else {
                    path = new Path(model.getInstallLocation()).append((IPath)path);
                }
                location = path.toString();
            }
        } else if (path.getDevice() == null && path.segmentCount() > 3 && "platform:".equals(path.segment(0)) && "plugin".equals(path.segment(1)) && (model = PluginRegistry.findModel(id = path.segment(2))) != null && model.isEnabled()) {
            path = path.removeFirstSegments(3);
            bundleLocation = model.getInstallLocation();
            if (bundleLocation.endsWith(".jar")) {
                bundleJar = bundleLocation;
            } else {
                path = new Path(model.getInstallLocation()).append((IPath)path);
            }
            location = path.toString();
        }
        ArrayList<String> paths = new ArrayList<String>();
        if (location.indexOf("$nl$") != -1) {
            String country;
            StringTokenizer tokenizer = new StringTokenizer(TargetPlatform.getNL(), "_");
            String language = tokenizer.hasMoreTokens() ? tokenizer.nextToken() : null;
            String string = country = tokenizer.hasMoreTokens() ? tokenizer.nextToken() : null;
            if (language != null && country != null) {
                paths.add(location.replaceAll("\\$nl\\$", "nl/" + language + '/' + country));
            }
            if (language != null) {
                paths.add(location.replaceAll("\\$nl\\$", "nl/" + language));
            }
            paths.add(location.replaceAll("\\$nl\\$", ""));
        } else {
            paths.add(location);
        }
        int i = 0;
        while (i < paths.size()) {
            if (bundleJar == null) {
                Path currPath = new Path(paths.get(i).toString());
                if (currPath.isAbsolute() && currPath.toFile().exists()) {
                    return true;
                }
                if (PDEProject.getBundleRoot(this.fFile.getProject()).findMember((IPath)currPath) != null) {
                    return true;
                }
                if (this.fBuildModel != null && this.fBuildModel.getEntry("source." + paths.get(i)) != null) {
                    return true;
                }
            } else if (CoreUtility.jarContainsResource(new File(bundleJar), paths.get(i).toString(), false)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected void validateJavaAttribute(Element element, Attr attr) {
        String value = attr.getValue();
        IJavaProject javaProject = JavaCore.create((IProject)this.fFile.getProject());
        int index = value.indexOf(":");
        if (index != -1) {
            value = value.substring(0, index);
        }
        boolean onClasspath = true;
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-class");
        if (severity != 2 && javaProject.isOpen() && !(onClasspath = PDEJavaHelper.isOnClasspath(value, javaProject))) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_class, (Object[])new String[]{value, attr.getName()}), this.getLine(element, attr.getName()), severity, 12291, element, String.valueOf(attr.getName()) + '!' + attr.getValue(), "fatal");
        }
        if ((severity = CompilerFlags.getFlag(this.fProject, "compilers.p.discouraged-class")) != 2 && javaProject.isOpen()) {
            BundleDescription desc = this.fModel.getBundleDescription();
            if (desc == null) {
                return;
            }
            if (onClasspath && PDEJavaHelper.isDiscouraged(value, javaProject, desc)) {
                this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_discouragedClass, (Object[])new String[]{value, attr.getName()}), this.getLine(element, attr.getName()), severity, 4131, element, String.valueOf(attr.getName()) + '!' + attr.getValue(), "");
            }
        }
    }

    protected void validateRestrictionAttribute(Element element, Attr attr, ISchemaRestriction restriction) {
        Object[] children = restriction.getChildren();
        String value = attr.getValue();
        int i = 0;
        while (i < children.length) {
            ISchemaEnumeration enumeration;
            Object child = children[i];
            if (child instanceof ISchemaEnumeration && (enumeration = (ISchemaEnumeration)child).getName().equals(value)) {
                return;
            }
            ++i;
        }
        this.reportIllegalAttributeValue(element, attr);
    }

    private void validateIdentifierAttribute(Element element, Attr attr, ISchemaAttribute attInfo) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-identifier");
        if (severity != 2) {
            Map attributes;
            String value = attr.getValue();
            String basedOn = attInfo.getBasedOn();
            if (value != null && basedOn != null && value.length() > 0 && basedOn.length() > 0 && !(attributes = PDESchemaHelper.getValidAttributes(attInfo)).containsKey(value)) {
                this.report(NLS.bind((String)PDECoreMessages.ExtensionsErrorReporter_unknownIdentifier, (Object[])new String[]{attr.getValue(), attr.getName()}), this.getLine(element, attr.getName()), severity, "");
            }
        }
    }

    protected void reportUnusedAttribute(Element element, String attName, int severity) {
        String message = NLS.bind((String)PDECoreMessages.Builders_Manifest_unused_attribute, (Object)attName);
        this.report(message, this.getLine(element, attName), severity, "");
    }

    protected void reportUnusedElement(Element element, int severity) {
        Node parent = element.getParentNode();
        this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_unused_element, (Object[])new String[]{element.getNodeName(), parent.getNodeName()}), this.getLine(element), severity, "");
    }

    protected void reportDeprecatedElement(Element element) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        if (severity != 2) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_deprecated_element, (Object)element.getNodeName()), this.getLine(element), severity, "deprecation");
        }
    }

    protected void reportDeprecatedRootElement(Element element, String suggestion) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        if (severity != 2) {
            String point = element.getAttribute("point");
            if (point == null) {
                return;
            }
            String message = suggestion != null ? NLS.bind((String)PDECoreMessages.Builders_Manifest_deprecated_rootElementSuggestion, (Object)point, (Object)suggestion) : NLS.bind((String)PDECoreMessages.Builders_Manifest_deprecated_rootElement, (Object)point);
            this.report(message, this.getLine(element, "point"), severity, "deprecation");
        }
    }
}

