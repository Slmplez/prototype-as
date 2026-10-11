/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IFolderLayout;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPlaceholderFolderLayout;
import org.eclipse.ui.IViewLayout;

public interface IPageLayout {
    public static final String ID_EDITOR_AREA = "org.eclipse.ui.editorss";
    public static final String ID_RES_NAV = "org.eclipse.ui.views.ResourceNavigator";
    public static final String ID_PROJECT_EXPLORER = "org.eclipse.ui.navigator.ProjectExplorer";
    public static final String ID_PROP_SHEET = "org.eclipse.ui.views.PropertySheet";
    public static final String ID_OUTLINE = "org.eclipse.ui.views.ContentOutline";
    public static final String ID_BOOKMARKS = "org.eclipse.ui.views.BookmarkView";
    public static final String ID_PROBLEM_VIEW = "org.eclipse.ui.views.ProblemView";
    public static final String ID_PROGRESS_VIEW = "org.eclipse.ui.views.ProgressView";
    public static final String ID_TASK_LIST = "org.eclipse.ui.views.TaskList";
    public static final String ID_NAVIGATE_ACTION_SET = "org.eclipse.ui.NavigateActionSet";
    public static final int LEFT = 1;
    public static final int RIGHT = 2;
    public static final int TOP = 3;
    public static final int BOTTOM = 4;
    public static final float RATIO_MIN = 0.05f;
    public static final float RATIO_MAX = 0.95f;
    public static final float DEFAULT_FASTVIEW_RATIO = 0.3f;
    public static final float DEFAULT_VIEW_RATIO = 0.5f;
    public static final float INVALID_RATIO = -1.0f;
    public static final float NULL_RATIO = -2.0f;

    public void addActionSet(String var1);

    public void addFastView(String var1);

    public void addFastView(String var1, float var2);

    public void addNewWizardShortcut(String var1);

    public void addPerspectiveShortcut(String var1);

    public void addPlaceholder(String var1, int var2, float var3, String var4);

    public void addShowInPart(String var1);

    public void addShowViewShortcut(String var1);

    public void addView(String var1, int var2, float var3, String var4);

    public IFolderLayout createFolder(String var1, int var2, float var3, String var4);

    public IPlaceholderFolderLayout createPlaceholderFolder(String var1, int var2, float var3, String var4);

    public String getEditorArea();

    public boolean isEditorAreaVisible();

    public void setEditorAreaVisible(boolean var1);

    public int getEditorReuseThreshold();

    public void setEditorReuseThreshold(int var1);

    public void setFixed(boolean var1);

    public boolean isFixed();

    public IViewLayout getViewLayout(String var1);

    public void addStandaloneView(String var1, boolean var2, int var3, float var4, String var5);

    public void addStandaloneViewPlaceholder(String var1, int var2, float var3, String var4, boolean var5);

    public IPerspectiveDescriptor getDescriptor();

    public IPlaceholderFolderLayout getFolderForView(String var1);
}

