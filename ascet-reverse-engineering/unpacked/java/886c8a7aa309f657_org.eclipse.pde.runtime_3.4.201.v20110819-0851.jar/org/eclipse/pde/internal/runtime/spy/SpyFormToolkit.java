/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.help.IContext
 *  org.eclipse.help.internal.context.Context
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.dialogs.PopupDialog
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MenuAdapter
 *  org.eclipse.swt.events.MenuEvent
 *  org.eclipse.swt.events.MenuListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.ImageLoader
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.Widget
 *  org.eclipse.ui.forms.events.HyperlinkAdapter
 *  org.eclipse.ui.forms.events.HyperlinkEvent
 *  org.eclipse.ui.forms.events.IHyperlinkListener
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.FormToolkit
 *  org.eclipse.ui.forms.widgets.Section
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.runtime.spy;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.help.IContext;
import org.eclipse.help.internal.context.Context;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.dialogs.PopupDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.spy.SpyIDEUtil;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MenuAdapter;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.events.IHyperlinkListener;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.Section;
import org.osgi.framework.Bundle;

public class SpyFormToolkit
extends FormToolkit {
    private static final String CLASS_PROTOCOL_PREFIX = "class://";
    private static final String BUNDLE_PROTOCOL_PREFIX = "bundle://";
    private Map bundleClassByName = new HashMap();
    private PopupDialog dialog;
    private static String HELP_KEY = "org.eclipse.ui.help";

    public SpyFormToolkit(PopupDialog dialog) {
        super(Display.getDefault());
        this.dialog = dialog;
    }

    public FormText createFormText(Composite parent, boolean trackFocus) {
        FormText text = super.createFormText(parent, trackFocus);
        if (PDERuntimePlugin.HAS_IDE_BUNDLES) {
            text.addHyperlinkListener((IHyperlinkListener)new SpyHyperlinkAdapter(this.dialog));
            this.addCopyQNameMenuItem(text);
        }
        return text;
    }

    private void addCopyQNameMenuItem(final FormText formText) {
        Menu menu = formText.getMenu();
        final MenuItem copyQNameItem = new MenuItem(menu, 8);
        copyQNameItem.setImage(PDERuntimePluginImages.get("cpyqual_menu.gif"));
        copyQNameItem.setText(PDERuntimeMessages.SpyFormToolkit_copyQualifiedName);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.widget == copyQNameItem) {
                    Clipboard clipboard = null;
                    try {
                        clipboard = new Clipboard(formText.getDisplay());
                        clipboard.setContents(new Object[]{((String)formText.getSelectedLinkHref()).substring(SpyFormToolkit.CLASS_PROTOCOL_PREFIX.length())}, new Transfer[]{TextTransfer.getInstance()});
                    }
                    finally {
                        if (clipboard != null) {
                            clipboard.dispose();
                        }
                    }
                }
            }
        };
        copyQNameItem.addSelectionListener((SelectionListener)listener);
        menu.addMenuListener((MenuListener)new MenuAdapter(){

            public void menuShown(MenuEvent e) {
                String href = (String)formText.getSelectedLinkHref();
                copyQNameItem.setEnabled(href != null && href.startsWith(SpyFormToolkit.CLASS_PROTOCOL_PREFIX));
            }
        });
    }

    public String createInterfaceSection(FormText text, String title, Class[] clazzes) {
        StringBuffer buffer = new StringBuffer();
        if (clazzes.length > 0) {
            buffer.append("<p>");
            buffer.append(title);
            buffer.append("</p>");
            int i = 0;
            while (i < clazzes.length) {
                buffer.append("<li bindent=\"20\" style=\"image\" value=\"interface\">");
                this.createClassReference(buffer, clazzes[i]);
                buffer.append("</li>");
                ++i;
            }
            Image image = PDERuntimePluginImages.get("int_obj.gif");
            text.setImage("interface", image);
        }
        return buffer.toString();
    }

    public String createClassSection(FormText text, String title, Class[] clazzes) {
        StringBuffer buffer = new StringBuffer();
        if (clazzes.length > 0) {
            buffer.append("<p>");
            buffer.append(title);
            buffer.append("</p>");
            int i = 0;
            while (i < clazzes.length) {
                buffer.append("<li bindent=\"20\" style=\"image\" value=\"class\">");
                this.createClassReference(buffer, clazzes[i]);
                buffer.append("</li>");
                ++i;
            }
            Image image = PDERuntimePluginImages.get("class_obj.gif");
            text.setImage("class", image);
        }
        return buffer.toString();
    }

    public String createIdentifierSection(FormText text, String title, String[] ids) {
        StringBuffer buffer = new StringBuffer();
        if (ids.length > 0) {
            buffer.append("<p>");
            buffer.append(title);
            buffer.append("</p>");
            int i = 0;
            while (i < ids.length) {
                buffer.append("<li bindent=\"20\" style=\"image\" value=\"id\">");
                buffer.append(ids[i]);
                buffer.append("</li>");
                ++i;
            }
            Image image = PDERuntimePluginImages.get("generic_xml_obj.gif");
            text.setImage("id", image);
        }
        return buffer.toString();
    }

    public String createHelpIdentifierSection(Widget widget) {
        return this.createHelpIdentifierSection(widget.getData(HELP_KEY));
    }

    public String createHelpIdentifierSection(IContext context) {
        if (context instanceof Context) {
            return this.createHelpIdentifierSection(((Context)context).getId());
        }
        return new String();
    }

    private String createHelpIdentifierSection(Object help) {
        StringBuffer buffer = new StringBuffer();
        if (help != null) {
            buffer.append("<li bindent=\"20\" style=\"image\" value=\"contextid\">");
            buffer.append(help);
            buffer.append("</li>");
        }
        return buffer.toString();
    }

    private void createClassReference(StringBuffer buffer, Class clazz) {
        Bundle bundle;
        Bundle bundle2 = bundle = PDERuntimePlugin.HAS_IDE_BUNDLES ? PDERuntimePlugin.getDefault().getPackageAdmin().getBundle(clazz) : null;
        if (bundle != null) {
            this.bundleClassByName.put(clazz.getName(), bundle);
            buffer.append("<a href=\"").append(CLASS_PROTOCOL_PREFIX).append(clazz.getName()).append("\">").append(this.getSimpleName(clazz)).append("</a>");
        } else {
            buffer.append(clazz.getName());
        }
    }

    public void generatePluginDetailsText(Bundle bundle, String objectId, String objectType, StringBuffer buffer, FormText text) {
        if (bundle != null) {
            String version = (String)bundle.getHeaders().get("Bundle-Version");
            buffer.append("<p>");
            buffer.append(PDERuntimeMessages.SpyDialog_contributingPluginId_title);
            buffer.append("</p>");
            buffer.append("<li bindent=\"20\" style=\"image\" value=\"plugin\">");
            if (PDERuntimePlugin.HAS_IDE_BUNDLES) {
                buffer.append("<a href=\"");
                buffer.append(BUNDLE_PROTOCOL_PREFIX);
                buffer.append(bundle.getSymbolicName());
                buffer.append("\">");
            }
            buffer.append(bundle.getSymbolicName());
            buffer.append(" (");
            buffer.append(version);
            buffer.append(")");
            if (PDERuntimePlugin.HAS_IDE_BUNDLES) {
                buffer.append("</a>");
            }
            buffer.append("</li>");
            Image pluginImage = PDERuntimePluginImages.get("plugin_obj.gif");
            text.setImage("plugin", pluginImage);
            if (objectId != null) {
                buffer.append("<p>");
                buffer.append(NLS.bind((String)PDERuntimeMessages.SpyDialog_contributingPluginId_desc, (Object)objectType));
                buffer.append("</p>");
                buffer.append("<li bindent=\"20\" style=\"image\" value=\"id\">");
                buffer.append(objectId);
                buffer.append("</li>");
            }
        }
    }

    private String getSimpleName(Class clazz) {
        int index;
        String fullName = clazz.getName();
        String name = fullName.substring((index = fullName.lastIndexOf(46)) + 1, fullName.length());
        if (name != null) {
            return name;
        }
        return fullName;
    }

    private ToolBarManager createSectionToolbar(Section section) {
        Object object = section.getData("toolbarmanager");
        if (object instanceof ToolBarManager) {
            return (ToolBarManager)object;
        }
        ToolBarManager manager = new ToolBarManager(0x800000);
        ToolBar toolbar = manager.createControl((Composite)section);
        final Cursor handCursor = new Cursor((Device)Display.getCurrent(), 21);
        toolbar.setCursor(handCursor);
        toolbar.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (handCursor != null && !handCursor.isDisposed()) {
                    handCursor.dispose();
                }
            }
        });
        section.setTextClient((Control)toolbar);
        section.setData("toolbarmanager", (Object)manager);
        return manager;
    }

    public void createImageAction(Section section, Image image) {
        if (image == null) {
            return;
        }
        ToolBarManager manager = this.createSectionToolbar(section);
        SaveImageAction action = new SaveImageAction(image);
        action.setText(PDERuntimeMessages.SpyFormToolkit_saveImageAs_title);
        action.setImageDescriptor(PDERuntimePluginImages.SAVE_IMAGE_AS_OBJ);
        manager.add((IAction)action);
        manager.update(true);
    }

    private class SaveImageAction
    extends Action {
        private Image image;

        public SaveImageAction(Image image) {
            this.image = image;
        }

        public void run() {
            FileDialog fileChooser = new FileDialog(PDERuntimePlugin.getActiveWorkbenchShell(), 8192);
            fileChooser.setFileName("image");
            fileChooser.setFilterExtensions(new String[]{"*.png"});
            fileChooser.setFilterNames(new String[]{"PNG (*.png)"});
            String filename = fileChooser.open();
            if (filename == null) {
                return;
            }
            int filetype = this.determineFileType(filename);
            if (filetype == -1) {
                return;
            }
            ImageLoader loader = new ImageLoader();
            loader.data = new ImageData[]{this.image.getImageData()};
            loader.save(filename, filetype);
        }

        private int determineFileType(String filename) {
            String ext = filename.substring(filename.lastIndexOf(46) + 1);
            if (ext.equalsIgnoreCase("gif")) {
                return 2;
            }
            if (ext.equalsIgnoreCase("ico")) {
                return 3;
            }
            if (ext.equalsIgnoreCase("jpg") || ext.equalsIgnoreCase("jpeg")) {
                return 4;
            }
            if (ext.equalsIgnoreCase("png")) {
                return 5;
            }
            return -1;
        }
    }

    private class SpyHyperlinkAdapter
    extends HyperlinkAdapter {
        private PopupDialog fDialog;

        public SpyHyperlinkAdapter(PopupDialog dialog) {
            this.fDialog = dialog;
        }

        public void linkActivated(HyperlinkEvent e) {
            String href = (String)e.getHref();
            if (href.startsWith(SpyFormToolkit.CLASS_PROTOCOL_PREFIX)) {
                String clazz = href.substring(SpyFormToolkit.CLASS_PROTOCOL_PREFIX.length());
                Bundle bundle = (Bundle)SpyFormToolkit.this.bundleClassByName.get(clazz);
                SpyIDEUtil.openClass(bundle.getSymbolicName(), clazz);
                this.fDialog.close();
            } else if (href.startsWith(SpyFormToolkit.BUNDLE_PROTOCOL_PREFIX)) {
                String bundle = href.substring(SpyFormToolkit.BUNDLE_PROTOCOL_PREFIX.length());
                SpyIDEUtil.openBundleManifest(bundle);
                this.fDialog.close();
            }
        }
    }
}

