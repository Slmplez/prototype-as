/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.StyledCellLabelProvider
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.jface.viewers.ViewerCell
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.pde.internal.runtime.registry;

import java.util.Arrays;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.StyledCellLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.OverlayIcon;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.registry.RegistryBrowser;
import org.eclipse.pde.internal.runtime.registry.RegistryBrowserContentProvider;
import org.eclipse.pde.internal.runtime.registry.model.Attribute;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.BundleLibrary;
import org.eclipse.pde.internal.runtime.registry.model.BundlePrerequisite;
import org.eclipse.pde.internal.runtime.registry.model.ConfigurationElement;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.Folder;
import org.eclipse.pde.internal.runtime.registry.model.Property;
import org.eclipse.pde.internal.runtime.registry.model.ServiceName;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;
import org.eclipse.swt.graphics.Image;

public class RegistryBrowserLabelProvider
extends StyledCellLabelProvider
implements ILabelProvider {
    private Image fPluginImage;
    private Image fActivePluginImage;
    private Image fUnresolvedPluginImage;
    private Image fLibraryImage;
    private Image fRuntimeImage;
    private Image fGenericTagImage;
    private Image fGenericAttrImage;
    private Image fExtensionImage;
    private Image fExtensionsImage;
    private Image fExtensionPointImage;
    private Image fExtensionPointsImage;
    private Image fRequiresImage;
    private Image fExpReqPluginImage;
    private Image fReqPluginImage;
    private Image fPluginsImage;
    private Image fLocationImage;
    private Image fDisabledImage;
    private Image fExporterImage;
    private Image fImporterImage;
    private Image fServiceImage;
    private Image fPropertyImage;
    private Image fServicePropertyImage;
    private Image fFragmentImage;
    private Image fPackageImage;
    private RegistryBrowser fRegistryBrowser;
    static /* synthetic */ Class class$0;

    public RegistryBrowserLabelProvider(RegistryBrowser browser) {
        this.fRegistryBrowser = browser;
        this.fPluginImage = PDERuntimePluginImages.DESC_PLUGIN_OBJ.createImage();
        this.fReqPluginImage = PDERuntimePluginImages.DESC_REQ_PLUGIN_OBJ.createImage();
        this.fExtensionPointImage = PDERuntimePluginImages.DESC_EXT_POINT_OBJ.createImage();
        this.fExtensionPointsImage = PDERuntimePluginImages.DESC_EXT_POINTS_OBJ.createImage();
        this.fExtensionImage = PDERuntimePluginImages.DESC_EXTENSION_OBJ.createImage();
        this.fExtensionsImage = PDERuntimePluginImages.DESC_EXTENSIONS_OBJ.createImage();
        this.fRequiresImage = PDERuntimePluginImages.DESC_REQ_PLUGINS_OBJ.createImage();
        this.fLibraryImage = PDERuntimePluginImages.DESC_JAVA_LIB_OBJ.createImage();
        this.fGenericTagImage = PDERuntimePluginImages.DESC_GENERIC_XML_OBJ.createImage();
        this.fGenericAttrImage = PDERuntimePluginImages.DESC_ATTR_XML_OBJ.createImage();
        this.fRuntimeImage = PDERuntimePluginImages.DESC_RUNTIME_OBJ.createImage();
        this.fLocationImage = PDERuntimePluginImages.DESC_LOCATION.createImage();
        this.fExporterImage = PDERuntimePluginImages.DESC_EXP_OBJ.createImage();
        this.fImporterImage = PDERuntimePluginImages.DESC_IMP_OBJ.createImage();
        this.fServiceImage = PDERuntimePluginImages.DESC_SERVICE_OBJ.createImage();
        this.fPropertyImage = PDERuntimePluginImages.DESC_PROPERTY_OBJ.createImage();
        this.fPluginsImage = PDERuntimePluginImages.DESC_PLUGINS_OBJ.createImage();
        this.fFragmentImage = PDERuntimePluginImages.DESC_FRAGMENT_OBJ.createImage();
        this.fPackageImage = PDERuntimePluginImages.DESC_PACKAGE_OBJ.createImage();
        OverlayIcon activePluginDesc = new OverlayIcon(PDERuntimePluginImages.DESC_PLUGIN_OBJ, new ImageDescriptor[][]{{PDERuntimePluginImages.DESC_RUN_CO}});
        this.fActivePluginImage = activePluginDesc.createImage();
        OverlayIcon disabledPluginDesc = new OverlayIcon(PDERuntimePluginImages.DESC_PLUGIN_OBJ, new ImageDescriptor[][]{{PDERuntimePluginImages.DESC_ERROR_CO}});
        this.fDisabledImage = disabledPluginDesc.createImage();
        OverlayIcon unresolvedPluginDesc = new OverlayIcon(PDERuntimePluginImages.DESC_PLUGIN_OBJ, new ImageDescriptor[][]{{PDERuntimePluginImages.DESC_ERROR_CO}});
        this.fUnresolvedPluginImage = unresolvedPluginDesc.createImage();
        OverlayIcon exportedRequiresDesc = new OverlayIcon(PDERuntimePluginImages.DESC_REQ_PLUGIN_OBJ, new ImageDescriptor[][]{{PDERuntimePluginImages.DESC_EXPORT_CO}});
        this.fExpReqPluginImage = exportedRequiresDesc.createImage();
        OverlayIcon servicePropertyDesc = new OverlayIcon(PDERuntimePluginImages.DESC_PROPERTY_OBJ, new ImageDescriptor[][]{{PDERuntimePluginImages.DESC_DEFAULT_CO}});
        this.fServicePropertyImage = servicePropertyDesc.createImage();
    }

    public void dispose() {
        this.fPluginImage.dispose();
        this.fActivePluginImage.dispose();
        this.fUnresolvedPluginImage.dispose();
        this.fReqPluginImage.dispose();
        this.fExtensionPointImage.dispose();
        this.fExtensionPointsImage.dispose();
        this.fExtensionImage.dispose();
        this.fExtensionsImage.dispose();
        this.fRequiresImage.dispose();
        this.fExpReqPluginImage.dispose();
        this.fLibraryImage.dispose();
        this.fGenericTagImage.dispose();
        this.fGenericAttrImage.dispose();
        this.fRuntimeImage.dispose();
        this.fLocationImage.dispose();
        this.fDisabledImage.dispose();
        this.fImporterImage.dispose();
        this.fExporterImage.dispose();
        this.fServiceImage.dispose();
        this.fPropertyImage.dispose();
        this.fServicePropertyImage.dispose();
        this.fPluginsImage.dispose();
        this.fFragmentImage.dispose();
        this.fPackageImage.dispose();
    }

    public Image getImage(Object element) {
        if (element instanceof Bundle) {
            Bundle bundle = (Bundle)element;
            if (bundle.getFragmentHost() != null) {
                return this.fFragmentImage;
            }
            if (!bundle.isEnabled()) {
                return this.fDisabledImage;
            }
            switch (bundle.getState()) {
                case 32: {
                    return this.fActivePluginImage;
                }
                case 1: {
                    return this.fUnresolvedPluginImage;
                }
                case 2: {
                    if (bundle.isEnabled()) break;
                    return this.fUnresolvedPluginImage;
                }
            }
            return this.fPluginImage;
        }
        if (element instanceof ServiceName) {
            return this.fServiceImage;
        }
        if (element instanceof ServiceRegistration) {
            return this.fPluginImage;
        }
        if (element instanceof Property) {
            Property property = (Property)element;
            if (property.getName().equals("objectClass")) {
                return PDERuntimePluginImages.get("class_obj.gif");
            }
            if (property.getName().startsWith("service.") || property.getName().startsWith("component.")) {
                return this.fServicePropertyImage;
            }
            return this.fPropertyImage;
        }
        if (element instanceof Folder) {
            int id = ((Folder)element).getId();
            switch (id) {
                case 1: {
                    return this.fExtensionsImage;
                }
                case 2: {
                    return this.fExtensionPointsImage;
                }
                case 3: {
                    return this.fRequiresImage;
                }
                case 4: {
                    return this.fRuntimeImage;
                }
                case 5: {
                    return this.fExporterImage;
                }
                case 6: {
                    return this.fImporterImage;
                }
                case 7: {
                    return this.fPropertyImage;
                }
                case 8: {
                    return this.fPluginsImage;
                }
                case 9: {
                    return this.fPluginsImage;
                }
                case 10: 
                case 11: {
                    return this.fPackageImage;
                }
            }
            return null;
        }
        if (element instanceof Extension) {
            return this.fExtensionImage;
        }
        if (element instanceof ExtensionPoint) {
            return this.fExtensionPointImage;
        }
        if (element instanceof BundlePrerequisite) {
            BundlePrerequisite prereq = (BundlePrerequisite)element;
            if (prereq.isPackage()) {
                return this.fPackageImage;
            }
            return prereq.isExported() ? this.fExpReqPluginImage : this.fReqPluginImage;
        }
        if (element instanceof BundleLibrary) {
            return this.fLibraryImage;
        }
        if (element instanceof ConfigurationElement) {
            return this.fGenericTagImage;
        }
        if (element instanceof Attribute) {
            Attribute attr = (Attribute)element;
            if ("Location".equals(attr.getName())) {
                return this.fLocationImage;
            }
            if ("Bundle".equals(attr.getName())) {
                return this.fPluginImage;
            }
            return this.fGenericAttrImage;
        }
        return null;
    }

    protected StyledString getStyledText(Object element) {
        if (element instanceof Bundle) {
            String host;
            Bundle bundle = (Bundle)element;
            StyledString sb = new StyledString(bundle.getSymbolicName());
            String version = bundle.getVersion();
            if (version != null) {
                sb.append(" (", StyledString.DECORATIONS_STYLER);
                sb.append(version, StyledString.DECORATIONS_STYLER);
                sb.append(")", StyledString.DECORATIONS_STYLER);
            }
            if ((host = bundle.getFragmentHost()) != null) {
                sb.append(" [", StyledString.QUALIFIER_STYLER);
                sb.append(host, StyledString.QUALIFIER_STYLER);
                sb.append("]", StyledString.QUALIFIER_STYLER);
            }
            return sb;
        }
        if (element instanceof ServiceRegistration) {
            ServiceRegistration ref = (ServiceRegistration)element;
            String identifier = " (id=" + ref.getId() + ")";
            StyledString ss = new StyledString();
            if (this.fRegistryBrowser.getGroupBy() == 0) {
                String[] classes = ref.getName().getClasses();
                ss.append(Arrays.asList(classes).toString());
            } else {
                ss.append(PDERuntimeMessages.RegistryBrowserLabelProvider_RegisteredBy);
                ss.append(ref.getBundle());
            }
            ss.append(identifier, StyledString.DECORATIONS_STYLER);
            return ss;
        }
        if (element instanceof ServiceName) {
            return new StyledString(Arrays.asList(((ServiceName)element).getClasses()).toString());
        }
        if (element instanceof Folder) {
            String text = null;
            switch (((Folder)element).getId()) {
                case 3: {
                    text = PDERuntimeMessages.RegistryView_folders_imports;
                    break;
                }
                case 10: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_ImportedPackages;
                    break;
                }
                case 11: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_ExportedPackages;
                    break;
                }
                case 4: {
                    text = PDERuntimeMessages.RegistryView_folders_libraries;
                    break;
                }
                case 2: {
                    text = PDERuntimeMessages.RegistryView_folders_extensionPoints;
                    break;
                }
                case 1: {
                    text = PDERuntimeMessages.RegistryView_folders_extensions;
                    break;
                }
                case 5: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_registeredServices;
                    break;
                }
                case 6: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_usedServices;
                    break;
                }
                case 7: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_Properties;
                    break;
                }
                case 8: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_UsingBundles;
                    break;
                }
                case 9: {
                    text = PDERuntimeMessages.RegistryBrowserLabelProvider_Fragments;
                }
            }
            if (text != null) {
                return new StyledString(text);
            }
        }
        if (element instanceof Extension) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.viewers.IContentProvider");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (((RegistryBrowserContentProvider)this.fRegistryBrowser.getAdapter((Class)clazz)).isInExtensionSet) {
                Extension extension = (Extension)element;
                StyledString ss = new StyledString(extension.getExtensionPointUniqueIdentifier());
                String name = extension.getLabel();
                if (name != null && name.length() > 0) {
                    ss.append("[ ", StyledString.QUALIFIER_STYLER);
                    ss.append(name, StyledString.QUALIFIER_STYLER);
                    ss.append(']', StyledString.QUALIFIER_STYLER);
                }
                return ss;
            }
            String contributor = ((Extension)element).getNamespaceIdentifier();
            return new StyledString(NLS.bind((String)PDERuntimeMessages.RegistryBrowserLabelProvider_contributedBy, (Object)contributor));
        }
        if (element instanceof ExtensionPoint) {
            ExtensionPoint extPoint = (ExtensionPoint)element;
            StyledString ss = new StyledString(extPoint.getUniqueIdentifier());
            String name = extPoint.getLabel();
            if (name != null && name.length() > 0) {
                ss.append(" [", StyledString.QUALIFIER_STYLER);
                ss.append(name, StyledString.QUALIFIER_STYLER);
                ss.append(']', StyledString.QUALIFIER_STYLER);
            }
            return ss;
        }
        if (element instanceof BundlePrerequisite) {
            BundlePrerequisite prereq = (BundlePrerequisite)element;
            StyledString ss = new StyledString(prereq.getName());
            String version = prereq.getVersion();
            if (version != null) {
                if (Character.isDigit(version.charAt(0))) {
                    version = String.valueOf('(') + version + ')';
                }
                ss.append(' ').append(version, StyledString.DECORATIONS_STYLER);
            }
            return ss;
        }
        if (element instanceof BundleLibrary) {
            return new StyledString(((BundleLibrary)element).getLibrary());
        }
        if (element instanceof ConfigurationElement) {
            return new StyledString(((ConfigurationElement)element).getName());
        }
        if (element instanceof Attribute) {
            Attribute attribute = (Attribute)element;
            if ("Bundle".equals(attribute.getName())) {
                return new StyledString(attribute.getValue());
            }
            return new StyledString(String.valueOf(attribute.getName()) + " = " + attribute.getValue());
        }
        if (element instanceof Property) {
            Property property = (Property)element;
            return new StyledString(String.valueOf(property.getName()) + " = " + property.getValue());
        }
        return new StyledString(element == null ? "" : element.toString());
    }

    public void update(ViewerCell cell) {
        StyledString string = this.getStyledText(cell.getElement());
        cell.setText(string.getString());
        cell.setStyleRanges(string.getStyleRanges());
        cell.setImage(this.getImage(cell.getElement()));
        super.update(cell);
    }

    public String getText(Object element) {
        return this.getStyledText(element).getString();
    }
}

