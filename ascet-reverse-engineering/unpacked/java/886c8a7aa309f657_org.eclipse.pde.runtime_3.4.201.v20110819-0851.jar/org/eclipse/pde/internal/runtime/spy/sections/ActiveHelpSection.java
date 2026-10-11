/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.help.IContext
 *  org.eclipse.help.IContextProvider
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.preference.IPreferencePage
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Widget
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IEditorReference
 *  org.eclipse.ui.IViewReference
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.forms.widgets.FormText
 *  org.eclipse.ui.forms.widgets.ScrolledForm
 *  org.eclipse.ui.forms.widgets.Section
 *  org.eclipse.ui.forms.widgets.TableWrapData
 *  org.eclipse.ui.handlers.HandlerUtil
 *  org.eclipse.ui.internal.WorkbenchPartReference
 *  org.eclipse.ui.part.ViewPart
 */
package org.eclipse.pde.internal.runtime.spy.sections;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.help.IContext;
import org.eclipse.help.IContextProvider;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.spy.SpyFormToolkit;
import org.eclipse.pde.internal.runtime.spy.sections.ISpySection;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.forms.widgets.TableWrapData;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.part.ViewPart;

public class ActiveHelpSection
implements ISpySection {
    private SpyFormToolkit toolkit;
    static /* synthetic */ Class class$0;

    public void build(ScrolledForm form, SpyFormToolkit toolkit, ExecutionEvent event) {
        PreferenceDialog dialog;
        this.toolkit = toolkit;
        Shell shell = HandlerUtil.getActiveShell((ExecutionEvent)event);
        Object object = shell.getData();
        if (object == null) {
            return;
        }
        StringBuffer helpBuffer = new StringBuffer();
        if (object instanceof PreferenceDialog) {
            dialog = (PreferenceDialog)object;
            IPreferencePage page = (IPreferencePage)dialog.getSelectedPage();
            this.processHelp((Widget)page.getControl().getShell(), helpBuffer);
            this.processChildren(page.getControl(), helpBuffer);
        } else if (object instanceof Dialog) {
            dialog = (Dialog)object;
            this.processChildren((Control)dialog.getShell(), helpBuffer);
        } else {
            helpBuffer.append(this.processControlHelp(event, toolkit));
        }
        if (helpBuffer != null && helpBuffer.length() > 0) {
            Section section = toolkit.createSection(form.getBody(), 256);
            section.setText(PDERuntimeMessages.SpyDialog_activeHelpSection_title);
            section.clientVerticalSpacing = 9;
            FormText text = toolkit.createFormText((Composite)section, true);
            section.setClient((Control)text);
            TableWrapData td = new TableWrapData();
            td.align = 128;
            td.grabHorizontal = true;
            section.setLayoutData((Object)td);
            Image image = PDERuntimePluginImages.get("contextid_obj.gif");
            text.setImage("contextid", image);
            StringBuffer buffer = new StringBuffer();
            buffer.append("<form>");
            buffer.append("<p>");
            buffer.append(PDERuntimeMessages.SpyDialog_activeHelpSection_desc);
            buffer.append("</p>");
            buffer.append(helpBuffer.toString());
            buffer.append("</form>");
            String content = buffer.toString().replaceAll("&", "&amp;");
            text.setText(content, true, false);
        }
    }

    private void processHelp(Widget widget, StringBuffer buffer) {
        buffer.append(this.toolkit.createHelpIdentifierSection(widget));
    }

    private void processChildren(Control control, StringBuffer buffer) {
        this.processHelp((Widget)control, buffer);
        if (control instanceof Composite) {
            Composite composite = (Composite)control;
            Control[] controls = composite.getChildren();
            int i = 0;
            while (i < controls.length) {
                this.processChildren(controls[i], buffer);
                ++i;
            }
        }
    }

    private String processControlHelp(ExecutionEvent event, SpyFormToolkit toolkit) {
        StringBuffer buffer;
        block19: {
            IContextProvider provider;
            IContext context;
            Control control;
            IWorkbenchPart part;
            block20: {
                block18: {
                    WorkbenchPartReference wpr;
                    int j;
                    part = HandlerUtil.getActivePart((ExecutionEvent)event);
                    if (part == null) {
                        return null;
                    }
                    IWorkbenchWindow window = part.getSite().getWorkbenchWindow();
                    if (window == null) {
                        return null;
                    }
                    buffer = new StringBuffer();
                    Shell shell = null;
                    control = null;
                    if (part instanceof IEditorPart) {
                        IEditorPart editorPart = (IEditorPart)part;
                        shell = editorPart.getSite().getShell();
                        j = 0;
                        while (j < window.getActivePage().getEditorReferences().length) {
                            IEditorReference er = window.getActivePage().getEditorReferences()[j];
                            if (er.getId().equals(editorPart.getEditorSite().getId()) && er instanceof WorkbenchPartReference) {
                                wpr = (WorkbenchPartReference)er;
                                control = wpr.getPane().getControl();
                                shell = null;
                                break;
                            }
                            ++j;
                        }
                    } else if (part instanceof ViewPart) {
                        ViewPart viewPart = (ViewPart)part;
                        shell = viewPart.getSite().getShell();
                        j = 0;
                        while (j < window.getActivePage().getViewReferences().length) {
                            IViewReference vr = window.getActivePage().getViewReferences()[j];
                            if (vr.getId().equals(viewPart.getViewSite().getId()) && vr instanceof WorkbenchPartReference) {
                                wpr = (WorkbenchPartReference)vr;
                                control = wpr.getPane().getControl();
                                shell = null;
                                break;
                            }
                            ++j;
                        }
                    }
                    if (shell == null) break block18;
                    buffer.append(toolkit.createHelpIdentifierSection((Widget)shell));
                    int i = 0;
                    while (i < shell.getChildren().length) {
                        this.processChildren(shell.getChildren()[i], buffer);
                        ++i;
                    }
                    break block19;
                }
                if (control == null) break block19;
                if (PDERuntimePlugin.HAS_IDE_BUNDLES) break block20;
                this.processChildren(control, buffer);
                break block19;
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.help.IContextProvider");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContext iContext = context = (provider = (IContextProvider)part.getAdapter((Class)clazz)) != null ? provider.getContext(control) : null;
            if (context != null) {
                buffer.append(toolkit.createHelpIdentifierSection(context));
            } else {
                buffer.append(toolkit.createHelpIdentifierSection((Widget)control));
            }
            if (!(control instanceof Composite)) break block19;
            Composite parent = (Composite)control;
            int i = 0;
            while (i < parent.getChildren().length) {
                this.processChildren(parent.getChildren()[i], buffer);
                ++i;
            }
        }
        return buffer.toString();
    }
}

