/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.EventScript;
import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.cebra.view.CebraMainView;
import de.etas.cebra.view.CebraWarningDlg;
import de.etas.cebra.view.DisplayField;
import de.etas.cebra.view.NewScriptDlg;
import de.etas.cebra.view.OptionsDlg;
import de.etas.cebra.view.ScriptOptionsDlg;
import de.etas.cebra.view.ToolsDlg;
import de.etas.util.StringPrompter;
import de.etas.util.Utilities;
import java.awt.CheckboxMenuItem;
import java.awt.Color;
import java.awt.Component;
import java.awt.Cursor;
import java.awt.FileDialog;
import java.awt.Font;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.List;
import java.awt.Menu;
import java.awt.MenuBar;
import java.awt.MenuItem;
import java.awt.MenuShortcut;
import java.awt.PopupMenu;
import java.awt.TextArea;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.LineNumberReader;
import java.lang.reflect.Modifier;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Observable;
import java.util.Observer;

public class CebraMainView
implements ActionListener,
ItemListener,
KeyListener,
MouseListener,
WindowListener,
Observer {
    private static CebraMainView cmv = null;
    private boolean visible = false;
    private String logFilePath = null;
    private String logFileName = null;
    private String optionsFilePath = null;
    private String optionsFileName = null;
    private Hashtable classForIndex = new Hashtable(1);
    private Hashtable scriptForIndex = new Hashtable(1);
    private Hashtable indexForScript = new Hashtable(1);
    private int nameLength = 0;
    private int classLength = 0;
    private FileDialog choseIdeDlg = null;
    private FileDialog ivjLogFileDlg = null;
    private FileDialog ivjOptionsFileDlg = null;
    private Frame ivjCebraMainFrame = null;
    private GridLayout ivjCebraMainFrameGridLayout = null;
    private List ivjScriptList = null;
    private List ivjClassList = null;
    private TextArea ivjLogText = null;
    private MenuBar ivjCebraMainFrameMenuBar = null;
    private Menu ivjFileMenu = null;
    private MenuItem ivjClearEntry = null;
    private MenuItem ivjSaveAsEntry = null;
    private MenuItem ivjSaveEntry = null;
    private MenuItem ivjCloseEntry = null;
    private MenuItem ivjExitEntry = null;
    private Menu ivjScriptMenu = null;
    private MenuItem ivjRunScriptMenuEntry = null;
    private MenuItem ivjSuspendScriptMenuEntry = null;
    private MenuItem ivjResumeScriptMenuEntry = null;
    private MenuItem ivjStopScriptMenuEntry = null;
    private MenuItem ivjDeleteScriptMenuEntry = null;
    private MenuItem ivjScriptOptionsMenuEntry = null;
    private Menu ivjClassMenu = null;
    private MenuItem ivjNewClassMenuEntry = null;
    private MenuItem ivjDeleteClassMenuEntry = null;
    private MenuItem ivjNewScriptMenuEntry = null;
    private MenuItem ivjEditClassMenuEntry = null;
    private MenuItem ivjShowClassMenuEntry = null;
    private MenuItem ivjReloadClassMenuEntry = null;
    private Menu ivjViewMenu = null;
    private CheckboxMenuItem ivjShowClassesEntry = null;
    private CheckboxMenuItem ivjShowScriptsEntry = null;
    private Menu ivjOptionsMenu = null;
    private MenuItem ivjLoadOptionsEntry = null;
    private MenuItem ivjOptionsEntry = null;
    private MenuItem toolsEntry = null;
    private MenuItem ivjChoseIdeEntry = null;
    private MenuItem ivjSaveOptionsAsEntry = null;
    private MenuItem ivjSaveOptionsEntry = null;
    private PopupMenu ivjScriptPopupMenu = null;
    private MenuItem ivjRunScriptEntry = null;
    private MenuItem ivjSuspendScriptEntry = null;
    private MenuItem ivjResumeScriptEntry = null;
    private MenuItem ivjStopScriptEntry = null;
    private MenuItem ivjDeleteScriptEntry = null;
    private MenuItem ivjScriptOptionsEntry = null;
    private PopupMenu ivjClassPopupMenu = null;
    private MenuItem ivjNewClassEntry = null;
    private MenuItem ivjNewScriptEntry = null;
    private MenuItem ivjEditClassEntry = null;
    private MenuItem ivjShowClassEntry = null;
    private MenuItem ivjReloadClassEntry = null;

    private CebraMainView() {
        this.initialize();
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == this.getClearEntry()) {
            this.clearSelected();
        }
        if (e.getSource() == this.getSaveEntry()) {
            this.saveSelected();
        }
        if (e.getSource() == this.getSaveAsEntry()) {
            this.saveAsSelected();
        }
        if (e.getSource() == this.getCloseEntry()) {
            this.closeSelected();
        }
        if (e.getSource() == this.getExitEntry()) {
            this.exitSelected();
        }
        if (e.getSource() == this.getNewScriptMenuEntry()) {
            this.newScriptSelected();
        }
        if (e.getSource() == this.getNewClassMenuEntry()) {
            this.newClassSelected(null);
        }
        if (e.getSource() == this.getDeleteClassMenuEntry()) {
            this.deleteClassSelected();
        }
        if (e.getSource() == this.getEditClassMenuEntry()) {
            this.editClassSelected();
        }
        if (e.getSource() == this.getShowClassMenuEntry()) {
            this.showClassSelected();
        }
        if (e.getSource() == this.getReloadClassMenuEntry()) {
            this.reloadClassSelected();
        }
        if (e.getSource() == this.getRunScriptMenuEntry()) {
            this.runScriptSelected();
        }
        if (e.getSource() == this.getSuspendScriptMenuEntry()) {
            this.suspendScriptSelected();
        }
        if (e.getSource() == this.getResumeScriptMenuEntry()) {
            this.resumeScriptSelected();
        }
        if (e.getSource() == this.getStopScriptMenuEntry()) {
            this.stopScriptSelected();
        }
        if (e.getSource() == this.getDeleteScriptMenuEntry()) {
            this.deleteScriptSelected();
        }
        if (e.getSource() == this.getScriptOptionsMenuEntry()) {
            this.scriptOptionsSelected();
        }
        if (e.getSource() == this.getLoadOptionsEntry()) {
            this.loadOptionsSelected();
        }
        if (e.getSource() == this.getSaveOptionsEntry()) {
            this.saveOptionsSelected();
        }
        if (e.getSource() == this.getSaveOptionsAsEntry()) {
            this.saveOptionsAsSelected();
        }
        if (e.getSource() == this.getChoseIdeEntry()) {
            this.choseIdeSelected();
        }
        if (e.getSource() == this.getOptionsEntry()) {
            this.optionsSelected();
        }
        if (e.getSource() == this.getToolsEntry()) {
            this.toolsSelected();
        }
        if (e.getSource() == this.getRunScriptEntry()) {
            this.runScriptSelected();
        }
        if (e.getSource() == this.getSuspendScriptEntry()) {
            this.suspendScriptSelected();
        }
        if (e.getSource() == this.getResumeScriptEntry()) {
            this.resumeScriptSelected();
        }
        if (e.getSource() == this.getStopScriptEntry()) {
            this.stopScriptSelected();
        }
        if (e.getSource() == this.getDeleteScriptEntry()) {
            this.deleteScriptSelected();
        }
        if (e.getSource() == this.getScriptOptionsEntry()) {
            this.scriptOptionsSelected();
        }
        if (e.getSource() == this.getNewClassEntry()) {
            this.newClassSelected(null);
        }
        if (e.getSource() == this.getNewScriptEntry()) {
            this.newScriptSelected();
        }
        if (e.getSource() == this.getEditClassEntry()) {
            this.editClassSelected();
        }
        if (e.getSource() == this.getShowClassEntry()) {
            this.showClassSelected();
        }
        this.updateScriptMenu();
        this.updateClassList();
    }

    private void addListeners() {
        this.getCebraMainFrame().addWindowListener(this);
        this.getScriptList().addItemListener(this);
        this.getScriptList().addMouseListener(this);
        this.getScriptList().addKeyListener(this);
        this.getClassList().addItemListener(this);
        this.getClassList().addMouseListener(this);
        this.getClassList().addKeyListener(this);
        this.getClearEntry().addActionListener(this);
        this.getSaveEntry().addActionListener(this);
        this.getSaveAsEntry().addActionListener(this);
        this.getCloseEntry().addActionListener(this);
        this.getExitEntry().addActionListener(this);
        this.getRunScriptMenuEntry().addActionListener(this);
        this.getSuspendScriptMenuEntry().addActionListener(this);
        this.getResumeScriptMenuEntry().addActionListener(this);
        this.getStopScriptMenuEntry().addActionListener(this);
        this.getDeleteScriptMenuEntry().addActionListener(this);
        this.getScriptOptionsMenuEntry().addActionListener(this);
        this.getNewScriptMenuEntry().addActionListener(this);
        this.getDeleteClassMenuEntry().addActionListener(this);
        this.getNewClassMenuEntry().addActionListener(this);
        this.getShowClassMenuEntry().addActionListener(this);
        this.getReloadClassMenuEntry().addActionListener(this);
        this.getLoadOptionsEntry().addActionListener(this);
        this.getSaveOptionsEntry().addActionListener(this);
        this.getSaveOptionsAsEntry().addActionListener(this);
        this.getChoseIdeEntry().addActionListener(this);
        this.getOptionsEntry().addActionListener(this);
        this.getToolsEntry().addActionListener(this);
        this.getShowClassesEntry().addItemListener(this);
        this.getShowScriptsEntry().addItemListener(this);
        this.getRunScriptEntry().addActionListener(this);
        this.getSuspendScriptEntry().addActionListener(this);
        this.getResumeScriptEntry().addActionListener(this);
        this.getStopScriptEntry().addActionListener(this);
        this.getScriptOptionsEntry().addActionListener(this);
        this.getDeleteScriptEntry().addActionListener(this);
        this.getNewClassEntry().addActionListener(this);
        this.getNewScriptEntry().addActionListener(this);
        this.getShowClassEntry().addActionListener(this);
        this.getReloadClassEntry().addActionListener(this);
    }

    private void choseIdeSelected() {
        String ideCall = this.getIdeCall();
        FileDialog fd = new FileDialog(this.getCebraMainFrame());
        fd.setTitle("Chose Ide");
        fd.setName("ChoseIdeFileDlg");
        fd.setLayout(null);
        if (ideCall != null) {
            fd.setFile(ideCall);
        }
        class ExeFilter
        implements FilenameFilter {
            ExeFilter() {
            }

            public boolean accept(File dir, String file) {
                return file.endsWith(".exe");
            }
        }
        fd.setFilenameFilter(new ExeFilter());
        ((Component)fd).setVisible(true);
        ideCall = String.valueOf(fd.getDirectory()) + fd.getFile();
        if (ideCall != null) {
            this.setIdeCall(ideCall);
        }
    }

    public void classList_MouseClicked(MouseEvent mouseEvent) {
        if (this.getClassList().getSelectedIndex() < 0) {
            return;
        }
        if (mouseEvent.getClickCount() > 1) {
            this.newScriptSelected();
        }
    }

    public void classList_MousePressed(MouseEvent mouseEvent) {
    }

    private void classListMouseClicked(MouseEvent arg1) {
        try {
            this.classList_MouseClicked(arg1);
        }
        catch (Throwable ivjExc) {
            this.handleException(ivjExc);
        }
    }

    private void classListMousePressed(MouseEvent arg1) {
        try {
            this.classList_MousePressed(arg1);
        }
        catch (Throwable ivjExc) {
            this.handleException(ivjExc);
        }
    }

    private void clearSelected() {
        this.getLogText().setText(" ");
    }

    public void close() {
        this.getCebraMainFrame().dispose();
    }

    private void closeSelected() {
        this.close();
    }

    public static final CebraMainView cmv() {
        if (cmv == null) {
            cmv = new CebraMainView();
        }
        return cmv;
    }

    private String createClassEntry(String clazzName, boolean event, boolean abst) {
        StringBuffer result = new StringBuffer("   ");
        result.append(clazzName);
        if (!(event | abst)) {
            return result.toString();
        }
        result.append(" (");
        if (abst) {
            result.append("abstract ");
        }
        if (event) {
            result.append("event script class");
        } else {
            result.append("script class");
        }
        result.append(")");
        return result.toString();
    }

    private String createEntry(Script script, String name, String clazzName) {
        int count;
        StringBuffer buf = new StringBuffer();
        if (script.isAuto()) {
            buf.append("*");
        } else {
            buf.append(" ");
        }
        if (script.isStartup()) {
            buf.append("# ");
        } else {
            buf.append("  ");
        }
        buf.append(name);
        int i = count = name.length();
        while (i <= this.nameLength) {
            buf.append(" ");
            ++i;
        }
        buf.append(" ");
        count = clazzName.length();
        buf.append(clazzName);
        i = count;
        while (i <= this.classLength) {
            buf.append(" ");
            ++i;
        }
        buf.append(" ");
        String state = script.getState();
        count = state.length();
        buf.append(state);
        int i2 = count;
        while (i2 <= Script.maxLengthState) {
            buf.append(" ");
            ++i2;
        }
        buf.append(" ");
        Object starter = script.getStarter();
        if (starter == null) {
            state = "<null>";
        } else if (starter.equals(this)) {
            state = "<user>";
        } else if (Script.isScriptClass(starter.getClass())) {
            state = ((Script)starter).getName();
        }
        buf.append(state);
        if (script.isPeriodic()) {
            count = state.length();
            int mx = this.nameLength < 6 ? 6 : this.nameLength;
            int i3 = count;
            while (i3 <= mx) {
                buf.append(" ");
                ++i3;
            }
            buf.append(" ");
            buf.append(" (periodic, sample time = " + script.getSampleTime() + "ms)");
        }
        return new String(buf);
    }

    private void deleteClassSelected() {
        ClassTabEntry clazz = (ClassTabEntry)this.classForIndex.get(new Integer(this.getClassList().getSelectedIndex()));
        if (clazz == null) {
            return;
        }
        if (clazz.clazz.getName().equals(clazz.name)) {
            new CebraWarningDlg("The selected Class is not a registered Class", new Frame());
            return;
        }
        Script[] allScripts = Script.allInstances();
        int i = 0;
        while (i < allScripts.length) {
            if (allScripts[i].getRegisteredClass().equals(clazz.name)) {
                new CebraWarningDlg("Can not delete registered Class because of an instance of the class (see Script " + allScripts[i].getName() + ")", new Frame());
                return;
            }
            ++i;
        }
        Cebra.removeClassNameAlias(clazz.name);
        this.updateClassList();
    }

    private void deleteScriptSelected() {
        Script s = this.getScriptForIndex(this.getScriptList().getSelectedIndex());
        if (s == null) {
            return;
        }
        ScriptScheduler.registerScript(s.getName(), s.getClass().getName(), false);
        Script.removeScriptByName(s.getName());
        this.updateScriptList();
    }

    private void editClassSelected() {
        if (this.getIdeCall() == null) {
            return;
        }
        ClassTabEntry entry = (ClassTabEntry)this.classForIndex.get(new Integer(this.getClassList().getSelectedIndex()));
        if (entry == null) {
            return;
        }
        if (entry.clazz == null) {
            return;
        }
        String path = Cebra.pathForClass(entry.clazz);
        if (path == null) {
            return;
        }
        if (path.length() == 0) {
            return;
        }
        String shortName = entry.clazz.getName();
        shortName = shortName.substring(shortName.lastIndexOf(".") + 1, shortName.length());
        String clazzFile = String.valueOf(path) + Cebra.FS + shortName + ".java";
        Runtime rt = Runtime.getRuntime();
        File fp = new File(clazzFile);
        if (fp.exists()) {
            try {
                rt.exec("\"" + this.getIdeCall() + "\" " + clazzFile + ".java");
            }
            catch (Exception ex) {
                Cebra.println(ex.toString());
            }
        } else {
            try {
                rt.exec("\"" + this.getIdeCall() + "\"");
            }
            catch (Exception ex) {
                Cebra.println(ex.toString());
            }
        }
    }

    public void exit() {
        this.exitSelected();
    }

    private void exitSelected() {
        this.shutDown();
        this.close();
        Cebra.exit();
    }

    private Frame getCebraMainFrame() {
        if (this.ivjCebraMainFrame == null) {
            try {
                this.ivjCebraMainFrame = new Frame();
                this.ivjCebraMainFrame.setName("CebraMainFrame");
                this.ivjCebraMainFrame.setMenuBar(this.getCebraMainFrameMenuBar());
                this.ivjCebraMainFrame.setLayout(this.getCebraMainFrameGridLayout());
                ((Component)this.ivjCebraMainFrame).setBounds(28, 56, 600, 350);
                this.ivjCebraMainFrame.setTitle("Cebra Console");
                this.getCebraMainFrame().add((Component)this.getScriptList(), this.getScriptList().getName());
                this.ivjCebraMainFrame.add(this.getLogText());
                this.showScripts(true);
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjCebraMainFrame;
    }

    private GridLayout getCebraMainFrameGridLayout() {
        GridLayout ivjCebraMainFrameGridLayout = null;
        try {
            ivjCebraMainFrameGridLayout = new GridLayout();
            ivjCebraMainFrameGridLayout.setRows(2);
        }
        catch (Throwable ivjExc) {
            this.handleException(ivjExc);
        }
        return ivjCebraMainFrameGridLayout;
    }

    private MenuBar getCebraMainFrameMenuBar() {
        if (this.ivjCebraMainFrameMenuBar == null) {
            try {
                this.ivjCebraMainFrameMenuBar = new MenuBar();
                this.ivjCebraMainFrameMenuBar.add(this.getFileMenu());
                this.ivjCebraMainFrameMenuBar.add(this.getScriptMenu());
                this.ivjCebraMainFrameMenuBar.add(this.getClassMenu());
                this.ivjCebraMainFrameMenuBar.add(this.getOptionsMenu());
                this.ivjCebraMainFrameMenuBar.add(this.getViewMenu());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjCebraMainFrameMenuBar;
    }

    private FileDialog getChoseIdeDlg() {
        if (this.choseIdeDlg == null) {
            try {
                this.choseIdeDlg = new FileDialog(this.getCebraMainFrame());
                this.choseIdeDlg.setName("ChoseIdeDlg");
                this.choseIdeDlg.setLayout(null);
                this.choseIdeDlg.setMode(0);
                class ExeFilter
                implements FilenameFilter {
                    ExeFilter() {
                    }

                    public boolean accept(File dir, String file) {
                        return file.endsWith(".exe");
                    }
                }
                this.choseIdeDlg.setFilenameFilter(new ExeFilter());
                this.choseIdeDlg.setTitle("Chose Ide");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.choseIdeDlg;
    }

    private MenuItem getChoseIdeEntry() {
        if (this.ivjChoseIdeEntry == null) {
            try {
                this.ivjChoseIdeEntry = new MenuItem();
                this.ivjChoseIdeEntry.setLabel("Chose Ide...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjChoseIdeEntry;
    }

    private List getClassList() {
        if (this.ivjClassList == null) {
            try {
                this.ivjClassList = new List();
                this.ivjClassList.setName("ClassList");
                this.ivjClassList.setFont(new Font("monospaced", 0, 12));
                this.ivjClassList.add(this.getClassPopupMenu());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjClassList;
    }

    private Menu getClassMenu() {
        if (this.ivjClassMenu == null) {
            try {
                this.ivjClassMenu = new Menu();
                this.ivjClassMenu.setLabel("Class");
                this.ivjClassMenu.add(this.getNewClassMenuEntry());
                this.ivjClassMenu.add(this.getDeleteClassMenuEntry());
                this.ivjClassMenu.add(this.getNewScriptMenuEntry());
                this.ivjClassMenu.addSeparator();
                this.ivjClassMenu.add(this.getShowClassMenuEntry());
                this.ivjClassMenu.add(this.getReloadClassMenuEntry());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjClassMenu;
    }

    private PopupMenu getClassPopupMenu() {
        if (this.ivjClassPopupMenu == null) {
            try {
                this.ivjClassPopupMenu = new PopupMenu();
                this.ivjClassPopupMenu.setLabel("ClassActions");
                this.ivjClassPopupMenu.add(this.getNewClassEntry());
                this.ivjClassPopupMenu.add(this.getNewScriptEntry());
                this.ivjClassPopupMenu.addSeparator();
                this.ivjClassPopupMenu.add(this.getShowClassEntry());
                this.ivjClassPopupMenu.add(this.getReloadClassEntry());
                this.ivjClassPopupMenu.setFont(new Font("dialog", 0, 12));
                this.ivjClassPopupMenu.setEnabled(true);
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjClassPopupMenu;
    }

    private MenuItem getClearEntry() {
        if (this.ivjClearEntry == null) {
            try {
                this.ivjClearEntry = new MenuItem();
                this.ivjClearEntry.setShortcut(new MenuShortcut(67, false));
                this.ivjClearEntry.setLabel("Clear");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjClearEntry;
    }

    private MenuItem getCloseEntry() {
        if (this.ivjCloseEntry == null) {
            try {
                this.ivjCloseEntry = new MenuItem();
                this.ivjCloseEntry.setShortcut(new MenuShortcut(81, false));
                this.ivjCloseEntry.setLabel("Close Console");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjCloseEntry;
    }

    private MenuItem getDeleteClassMenuEntry() {
        if (this.ivjDeleteClassMenuEntry == null) {
            try {
                this.ivjDeleteClassMenuEntry = new MenuItem();
                this.ivjDeleteClassMenuEntry.setShortcut(new MenuShortcut(127, true));
                this.ivjDeleteClassMenuEntry.setLabel("Delete Registered Class");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjDeleteClassMenuEntry;
    }

    private MenuItem getDeleteScriptEntry() {
        if (this.ivjDeleteScriptEntry == null) {
            try {
                this.ivjDeleteScriptEntry = new MenuItem();
                this.ivjDeleteScriptEntry.setShortcut(new MenuShortcut(127, true));
                this.ivjDeleteScriptEntry.setLabel("Delete Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjDeleteScriptEntry;
    }

    private MenuItem getDeleteScriptMenuEntry() {
        if (this.ivjDeleteScriptMenuEntry == null) {
            try {
                this.ivjDeleteScriptMenuEntry = new MenuItem();
                this.ivjDeleteScriptMenuEntry.setShortcut(new MenuShortcut(127, true));
                this.ivjDeleteScriptMenuEntry.setLabel("Delete Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjDeleteScriptMenuEntry;
    }

    private MenuItem getEditClassEntry() {
        if (this.ivjEditClassEntry == null) {
            try {
                this.ivjEditClassEntry = new MenuItem();
                this.ivjEditClassEntry.setShortcut(new MenuShortcut(69, false));
                this.ivjEditClassEntry.setLabel("Edit Class...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjEditClassEntry;
    }

    private MenuItem getEditClassMenuEntry() {
        if (this.ivjEditClassMenuEntry == null) {
            try {
                this.ivjEditClassMenuEntry = new MenuItem();
                this.ivjEditClassMenuEntry.setShortcut(new MenuShortcut(69, false));
                this.ivjEditClassMenuEntry.setLabel("Edit Class...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjEditClassMenuEntry;
    }

    private MenuItem getExitEntry() {
        if (this.ivjExitEntry == null) {
            try {
                this.ivjExitEntry = new MenuItem();
                this.ivjExitEntry.setShortcut(new MenuShortcut(88, false));
                this.ivjExitEntry.setLabel("Exit");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjExitEntry;
    }

    private Menu getFileMenu() {
        if (this.ivjFileMenu == null) {
            try {
                this.ivjFileMenu = new Menu();
                this.ivjFileMenu.setLabel("File");
                this.ivjFileMenu.add(this.getClearEntry());
                this.ivjFileMenu.add(this.getSaveEntry());
                this.ivjFileMenu.add(this.getSaveAsEntry());
                this.ivjFileMenu.addSeparator();
                this.ivjFileMenu.add(this.getCloseEntry());
                this.ivjFileMenu.add(this.getExitEntry());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjFileMenu;
    }

    private Image getIcon() {
        Toolkit tk = Toolkit.getDefaultToolkit();
        File fp = new File("E:\\Cebra\\Cebra.gif");
        long size = fp.length();
        byte[] image = new byte[(int)size];
        try {
            FileInputStream fis = new FileInputStream(fp);
            fis.read(image);
            return tk.createImage(image);
        }
        catch (Exception ex) {
            this.handleException(ex);
            return null;
        }
    }

    private String getIdeCall() {
        return Cebra.getItemFromSection("ide", "user");
    }

    private int getIndexForScript(Script s) {
        Integer i = (Integer)this.indexForScript.get(s);
        if (i == null) {
            return -1;
        }
        return i;
    }

    private int getLineBreak() {
        return 15;
    }

    private MenuItem getLoadOptionsEntry() {
        if (this.ivjLoadOptionsEntry == null) {
            try {
                this.ivjLoadOptionsEntry = new MenuItem();
                this.ivjLoadOptionsEntry.setLabel("Load Configuration...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjLoadOptionsEntry;
    }

    private FileDialog getLogFileDlg() {
        if (this.ivjLogFileDlg == null) {
            try {
                this.ivjLogFileDlg = new FileDialog(this.getCebraMainFrame());
                this.ivjLogFileDlg.setName("LogFileDlg");
                this.ivjLogFileDlg.setDirectory("");
                this.ivjLogFileDlg.setLayout(null);
                this.ivjLogFileDlg.setMode(1);
                this.ivjLogFileDlg.setTitle("Save Log File");
                if (this.logFileName == null) {
                    this.ivjLogFileDlg.setDirectory(Cebra.cebraLogPath);
                } else {
                    this.ivjLogFileDlg.setDirectory(this.logFilePath);
                    this.ivjLogFileDlg.setFile(this.logFileName);
                }
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjLogFileDlg;
    }

    private TextArea getLogText() {
        if (this.ivjLogText == null) {
            try {
                this.ivjLogText = new TextArea();
                this.ivjLogText.setName("LogText");
                this.ivjLogText.setFont(new Font("monospaced", 0, 12));
                this.ivjLogText.setEditable(false);
                this.ivjLogText.setEnabled(true);
                ((Component)this.ivjLogText).setBackground(Color.lightGray);
                this.ivjLogText.setForeground(Color.black);
                this.ivjLogText.setCursor(new Cursor(0));
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjLogText;
    }

    private MenuItem getNewClassEntry() {
        if (this.ivjNewClassEntry == null) {
            try {
                this.ivjNewClassEntry = new MenuItem();
                this.ivjNewClassEntry.setShortcut(new MenuShortcut(155, true));
                this.ivjNewClassEntry.setLabel("Register Class...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjNewClassEntry;
    }

    private MenuItem getNewClassMenuEntry() {
        if (this.ivjNewClassMenuEntry == null) {
            try {
                this.ivjNewClassMenuEntry = new MenuItem();
                this.ivjNewClassMenuEntry.setShortcut(new MenuShortcut(155, true));
                this.ivjNewClassMenuEntry.setLabel("Register Class...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjNewClassMenuEntry;
    }

    private MenuItem getNewScriptEntry() {
        if (this.ivjNewScriptEntry == null) {
            try {
                this.ivjNewScriptEntry = new MenuItem();
                this.ivjNewScriptEntry.setShortcut(new MenuShortcut(155, false));
                this.ivjNewScriptEntry.setLabel("New Script...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjNewScriptEntry;
    }

    private MenuItem getNewScriptMenuEntry() {
        if (this.ivjNewScriptMenuEntry == null) {
            try {
                this.ivjNewScriptMenuEntry = new MenuItem();
                this.ivjNewScriptMenuEntry.setShortcut(new MenuShortcut(155, false));
                this.ivjNewScriptMenuEntry.setLabel("New Script...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjNewScriptMenuEntry;
    }

    private MenuItem getOptionsEntry() {
        if (this.ivjOptionsEntry == null) {
            try {
                this.ivjOptionsEntry = new MenuItem();
                this.ivjOptionsEntry.setLabel("Options...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjOptionsEntry;
    }

    private FileDialog getOptionsFileDlg() {
        if (this.ivjOptionsFileDlg == null) {
            try {
                this.ivjOptionsFileDlg = new FileDialog(this.getCebraMainFrame());
                this.ivjOptionsFileDlg.setName("OptionsFileDlg");
                this.ivjOptionsFileDlg.setLayout(null);
                if (this.optionsFileName == null) {
                    this.ivjOptionsFileDlg.setDirectory(Cebra.cebraConfigPath);
                } else {
                    this.ivjOptionsFileDlg.setDirectory(this.optionsFilePath);
                    this.ivjOptionsFileDlg.setFile(this.optionsFileName);
                }
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjOptionsFileDlg;
    }

    private Menu getOptionsMenu() {
        if (this.ivjOptionsMenu == null) {
            try {
                this.ivjOptionsMenu = new Menu();
                this.ivjOptionsMenu.setLabel("Configuration");
                this.ivjOptionsMenu.add(this.getLoadOptionsEntry());
                this.ivjOptionsMenu.add(this.getSaveOptionsEntry());
                this.ivjOptionsMenu.add(this.getSaveOptionsAsEntry());
                this.ivjOptionsMenu.addSeparator();
                this.ivjOptionsMenu.add(this.getOptionsEntry());
                this.ivjOptionsMenu.add(this.getToolsEntry());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjOptionsMenu;
    }

    private MenuItem getReloadClassEntry() {
        if (this.ivjReloadClassEntry == null) {
            try {
                this.ivjReloadClassEntry = new MenuItem();
                this.ivjReloadClassEntry.setShortcut(new MenuShortcut(69, false));
                this.ivjReloadClassEntry.setLabel("Refresh Classes");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjReloadClassEntry;
    }

    private MenuItem getReloadClassMenuEntry() {
        if (this.ivjReloadClassMenuEntry == null) {
            try {
                this.ivjReloadClassMenuEntry = new MenuItem();
                this.ivjReloadClassMenuEntry.setShortcut(new MenuShortcut(69, false));
                this.ivjReloadClassMenuEntry.setLabel("Refresh Classes");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjReloadClassMenuEntry;
    }

    private MenuItem getResumeScriptEntry() {
        if (this.ivjResumeScriptEntry == null) {
            try {
                this.ivjResumeScriptEntry = new MenuItem();
                this.ivjResumeScriptEntry.setShortcut(new MenuShortcut(84, true));
                this.ivjResumeScriptEntry.setLabel("Resume Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjResumeScriptEntry;
    }

    private MenuItem getResumeScriptMenuEntry() {
        if (this.ivjResumeScriptMenuEntry == null) {
            try {
                this.ivjResumeScriptMenuEntry = new MenuItem();
                this.ivjResumeScriptMenuEntry.setShortcut(new MenuShortcut(84, true));
                this.ivjResumeScriptMenuEntry.setLabel("Resume Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjResumeScriptMenuEntry;
    }

    private MenuItem getRunScriptEntry() {
        if (this.ivjRunScriptEntry == null) {
            try {
                this.ivjRunScriptEntry = new MenuItem();
                this.ivjRunScriptEntry.setShortcut(new MenuShortcut(82, false));
                this.ivjRunScriptEntry.setLabel("Run Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjRunScriptEntry;
    }

    private MenuItem getRunScriptMenuEntry() {
        if (this.ivjRunScriptMenuEntry == null) {
            try {
                this.ivjRunScriptMenuEntry = new MenuItem();
                this.ivjRunScriptMenuEntry.setShortcut(new MenuShortcut(82, false));
                this.ivjRunScriptMenuEntry.setLabel("Run Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjRunScriptMenuEntry;
    }

    private MenuItem getSaveAsEntry() {
        if (this.ivjSaveAsEntry == null) {
            try {
                this.ivjSaveAsEntry = new MenuItem();
                this.ivjSaveAsEntry.setShortcut(new MenuShortcut(83, true));
                this.ivjSaveAsEntry.setLabel("Save As...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjSaveAsEntry;
    }

    private MenuItem getSaveEntry() {
        if (this.ivjSaveEntry == null) {
            try {
                this.ivjSaveEntry = new MenuItem();
                this.ivjSaveEntry.setShortcut(new MenuShortcut(83, false));
                this.ivjSaveEntry.setLabel("Save");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjSaveEntry;
    }

    private MenuItem getSaveOptionsAsEntry() {
        if (this.ivjSaveOptionsAsEntry == null) {
            try {
                this.ivjSaveOptionsAsEntry = new MenuItem();
                this.ivjSaveOptionsAsEntry.setLabel("Save Configuration As...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjSaveOptionsAsEntry;
    }

    private MenuItem getSaveOptionsEntry() {
        if (this.ivjSaveOptionsEntry == null) {
            try {
                this.ivjSaveOptionsEntry = new MenuItem();
                this.ivjSaveOptionsEntry.setLabel("Save Configuration");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjSaveOptionsEntry;
    }

    private Script getScriptForIndex(int i) {
        return (Script)this.scriptForIndex.get(new Integer(i));
    }

    private List getScriptList() {
        if (this.ivjScriptList == null) {
            try {
                this.ivjScriptList = new List();
                this.ivjScriptList.setName("ScriptList");
                this.ivjScriptList.setFont(new Font("monospaced", 0, 12));
                this.ivjScriptList.add(this.getScriptPopupMenu());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjScriptList;
    }

    private Menu getScriptMenu() {
        if (this.ivjScriptMenu == null) {
            try {
                this.ivjScriptMenu = new Menu();
                this.ivjScriptMenu.setLabel("Script");
                this.ivjScriptMenu.add(this.getRunScriptMenuEntry());
                this.ivjScriptMenu.add(this.getSuspendScriptMenuEntry());
                this.ivjScriptMenu.add(this.getResumeScriptMenuEntry());
                this.ivjScriptMenu.add(this.getStopScriptMenuEntry());
                this.ivjScriptMenu.addSeparator();
                this.ivjScriptMenu.add(this.getDeleteScriptMenuEntry());
                this.ivjScriptMenu.add(this.getScriptOptionsMenuEntry());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjScriptMenu;
    }

    private MenuItem getScriptOptionsEntry() {
        if (this.ivjScriptOptionsEntry == null) {
            try {
                this.ivjScriptOptionsEntry = new MenuItem();
                this.ivjScriptOptionsEntry.setShortcut(new MenuShortcut(79, true));
                this.ivjScriptOptionsEntry.setLabel("Script Options...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjScriptOptionsEntry;
    }

    private MenuItem getScriptOptionsMenuEntry() {
        if (this.ivjScriptOptionsMenuEntry == null) {
            try {
                this.ivjScriptOptionsMenuEntry = new MenuItem();
                this.ivjScriptOptionsMenuEntry.setShortcut(new MenuShortcut(79, true));
                this.ivjScriptOptionsMenuEntry.setLabel("Script Options...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjScriptOptionsMenuEntry;
    }

    private PopupMenu getScriptPopupMenu() {
        if (this.ivjScriptPopupMenu == null) {
            try {
                this.ivjScriptPopupMenu = new PopupMenu();
                this.ivjScriptPopupMenu.setLabel("ScriptActions");
                this.ivjScriptPopupMenu.add(this.getRunScriptEntry());
                this.ivjScriptPopupMenu.add(this.getSuspendScriptEntry());
                this.ivjScriptPopupMenu.add(this.getResumeScriptEntry());
                this.ivjScriptPopupMenu.add(this.getStopScriptEntry());
                this.ivjScriptPopupMenu.addSeparator();
                this.ivjScriptPopupMenu.add(this.getDeleteScriptEntry());
                this.ivjScriptPopupMenu.add(this.getScriptOptionsEntry());
                this.ivjScriptPopupMenu.setFont(new Font("dialog", 0, 12));
                this.ivjScriptPopupMenu.setEnabled(true);
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjScriptPopupMenu;
    }

    private MenuItem getShowClassEntry() {
        if (this.ivjShowClassEntry == null) {
            try {
                this.ivjShowClassEntry = new MenuItem();
                this.ivjShowClassEntry.setShortcut(new MenuShortcut(68, false));
                this.ivjShowClassEntry.setLabel("Display class source");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjShowClassEntry;
    }

    private CheckboxMenuItem getShowClassesEntry() {
        if (this.ivjShowClassesEntry == null) {
            try {
                this.ivjShowClassesEntry = new CheckboxMenuItem();
                this.ivjShowClassesEntry.setLabel("Classes");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjShowClassesEntry;
    }

    private MenuItem getShowClassMenuEntry() {
        if (this.ivjShowClassMenuEntry == null) {
            try {
                this.ivjShowClassMenuEntry = new MenuItem();
                this.ivjShowClassMenuEntry.setShortcut(new MenuShortcut(68, false));
                this.ivjShowClassMenuEntry.setLabel("Display class source");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjShowClassMenuEntry;
    }

    private CheckboxMenuItem getShowScriptsEntry() {
        if (this.ivjShowScriptsEntry == null) {
            try {
                this.ivjShowScriptsEntry = new CheckboxMenuItem();
                this.ivjShowScriptsEntry.setLabel("Scripts");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjShowScriptsEntry;
    }

    private MenuItem getStopScriptEntry() {
        if (this.ivjStopScriptEntry == null) {
            try {
                this.ivjStopScriptEntry = new MenuItem();
                this.ivjStopScriptEntry.setShortcut(new MenuShortcut(82, true));
                this.ivjStopScriptEntry.setLabel("Stop Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjStopScriptEntry;
    }

    private MenuItem getStopScriptMenuEntry() {
        if (this.ivjStopScriptMenuEntry == null) {
            try {
                this.ivjStopScriptMenuEntry = new MenuItem();
                this.ivjStopScriptMenuEntry.setShortcut(new MenuShortcut(82, true));
                this.ivjStopScriptMenuEntry.setLabel("Stop Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjStopScriptMenuEntry;
    }

    private MenuItem getSuspendScriptEntry() {
        if (this.ivjSuspendScriptEntry == null) {
            try {
                this.ivjSuspendScriptEntry = new MenuItem();
                this.ivjSuspendScriptEntry.setShortcut(new MenuShortcut(84, false));
                this.ivjSuspendScriptEntry.setLabel("Suspend Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjSuspendScriptEntry;
    }

    private MenuItem getSuspendScriptMenuEntry() {
        if (this.ivjSuspendScriptMenuEntry == null) {
            try {
                this.ivjSuspendScriptMenuEntry = new MenuItem();
                this.ivjSuspendScriptMenuEntry.setShortcut(new MenuShortcut(84, false));
                this.ivjSuspendScriptMenuEntry.setLabel("Suspend Script");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjSuspendScriptMenuEntry;
    }

    private MenuItem getToolsEntry() {
        if (this.toolsEntry == null) {
            try {
                this.toolsEntry = new MenuItem();
                this.toolsEntry.setLabel("Remote Access...");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.toolsEntry;
    }

    private Menu getViewMenu() {
        if (this.ivjViewMenu == null) {
            try {
                this.ivjViewMenu = new Menu();
                this.ivjViewMenu.setLabel("View");
                this.ivjViewMenu.add(this.getShowScriptsEntry());
                this.ivjViewMenu.add(this.getShowClassesEntry());
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.ivjViewMenu;
    }

    private void handleException(Throwable exception) {
        Cebra.println("CebraMainView: " + exception.toString());
    }

    private void initialize() {
        this.addListeners();
        this.updateScriptList();
        this.open();
    }

    public void itemStateChanged(ItemEvent event) {
        if (event.getSource() == this.getScriptList()) {
            this.updateScriptMenu();
        }
        if (event.getSource() == this.getClassList()) {
            this.updateClassMenu();
        }
        if (event.getSource() == this.getShowClassesEntry()) {
            this.showScripts(false);
        }
        if (event.getSource() == this.getShowScriptsEntry()) {
            this.showScripts(true);
        }
    }

    public void keyPressed(KeyEvent e) {
    }

    public void keyReleased(KeyEvent e) {
    }

    public void keyTyped(KeyEvent e) {
        if (e.getSource() == this.getScriptList()) {
            this.scriptListKeyPressed(e);
        }
    }

    private void loadOptions() {
        Cebra.load(String.valueOf(this.optionsFilePath) + this.optionsFileName);
        ScriptScheduler.init();
    }

    private void loadOptionsSelected() {
        this.getOptionsFileDlg().setMode(0);
        this.getOptionsFileDlg().setTitle("Load Options");
        this.getOptionsFileDlg().show();
        this.optionsFilePath = this.getOptionsFileDlg().getDirectory();
        this.optionsFileName = this.getOptionsFileDlg().getFile();
        if (this.optionsFileName == null) {
            return;
        }
        if (this.optionsFileName.length() < 1) {
            return;
        }
        this.loadOptions();
    }

    public void mouseClicked(MouseEvent e) {
        if (e.getSource() == this.getScriptList()) {
            this.scriptListMouseClicked(e);
        }
        if (e.getSource() == this.getClassList()) {
            this.classListMouseClicked(e);
        }
    }

    public void mouseEntered(MouseEvent e) {
    }

    public void mouseExited(MouseEvent e) {
    }

    public void mousePressed(MouseEvent e) {
        if (e.getSource() == this.getScriptList()) {
            this.scriptListMousePressed(e);
        }
        if (e.getSource() == this.getClassList()) {
            this.classListMousePressed(e);
        }
    }

    public void mouseReleased(MouseEvent e) {
    }

    private void newClassSelected(String name) {
        String alias = name;
        ClassTabEntry clazz = (ClassTabEntry)this.classForIndex.get(new Integer(this.getClassList().getSelectedIndex()));
        if (clazz == null) {
            return;
        }
        if (alias == null) {
            alias = clazz.name;
        }
        if ((alias = StringPrompter.prompt("Register class as", alias, this.getCebraMainFrame())) == null) {
            return;
        }
        if (alias.length() == 0) {
            return;
        }
        if (!Utilities.checkNameString(alias)) {
            this.newClassSelected(Utilities.trimString(alias));
        }
        Cebra.addClassNameAlias(alias, clazz.clazz);
        this.updateClassList();
    }

    private void newScriptSelected() {
        int pos = this.getClassList().getSelectedIndex();
        ClassTabEntry entry = (ClassTabEntry)this.classForIndex.get(new Integer(pos));
        if (entry == null) {
            return;
        }
        new NewScriptDlg(entry.name, this.getCebraMainFrame());
    }

    public void open() {
        this.getCebraMainFrame().setMenuBar(this.getCebraMainFrameMenuBar());
        this.getCebraMainFrame().show();
    }

    private void optionsSelected() {
        new OptionsDlg(this.getCebraMainFrame());
    }

    public void print(String msg) {
        this.getLogText().append(msg);
    }

    public void println(String msg) {
        this.getLogText().append(String.valueOf(msg) + Cebra.LF);
    }

    private void reloadClassSelected() {
        ((Component)this.getCebraMainFrame()).setCursor(Cursor.getPredefinedCursor(3));
        Utilities.reloadPackages();
        ((Component)this.getCebraMainFrame()).setCursor(Cursor.getPredefinedCursor(0));
        this.updateClassList();
    }

    private void removeListeners() {
        this.getCebraMainFrame().removeWindowListener(this);
        this.getScriptList().removeItemListener(this);
        this.getScriptList().removeMouseListener(this);
        this.getScriptList().removeKeyListener(this);
        this.getClassList().removeItemListener(this);
        this.getClassList().removeMouseListener(this);
        this.getClassList().removeKeyListener(this);
        this.getClearEntry().removeActionListener(this);
        this.getSaveEntry().removeActionListener(this);
        this.getSaveAsEntry().removeActionListener(this);
        this.getCloseEntry().removeActionListener(this);
        this.getExitEntry().removeActionListener(this);
        this.getRunScriptMenuEntry().removeActionListener(this);
        this.getSuspendScriptMenuEntry().removeActionListener(this);
        this.getResumeScriptMenuEntry().removeActionListener(this);
        this.getStopScriptMenuEntry().removeActionListener(this);
        this.getDeleteScriptMenuEntry().removeActionListener(this);
        this.getScriptOptionsMenuEntry().removeActionListener(this);
        this.getNewScriptMenuEntry().removeActionListener(this);
        this.getNewClassMenuEntry().removeActionListener(this);
        this.getShowClassMenuEntry().removeActionListener(this);
        this.getReloadClassMenuEntry().removeActionListener(this);
        this.getLoadOptionsEntry().removeActionListener(this);
        this.getSaveOptionsEntry().removeActionListener(this);
        this.getSaveOptionsAsEntry().removeActionListener(this);
        this.getChoseIdeEntry().removeActionListener(this);
        this.getOptionsEntry().removeActionListener(this);
        this.getToolsEntry().removeActionListener(this);
        this.getShowClassesEntry().removeItemListener(this);
        this.getShowScriptsEntry().removeItemListener(this);
        this.getRunScriptEntry().removeActionListener(this);
        this.getSuspendScriptEntry().removeActionListener(this);
        this.getResumeScriptEntry().removeActionListener(this);
        this.getStopScriptEntry().removeActionListener(this);
        this.getScriptOptionsEntry().removeActionListener(this);
        this.getDeleteScriptEntry().removeActionListener(this);
        this.getNewClassEntry().removeActionListener(this);
        this.getNewScriptEntry().removeActionListener(this);
        this.getShowClassEntry().removeActionListener(this);
        this.getReloadClassEntry().removeActionListener(this);
    }

    private void resumeScriptSelected() {
        if (this.getScriptList().getSelectedIndex() < 0) {
            return;
        }
        Script s = this.getScriptForIndex(this.getScriptList().getSelectedIndex());
        if (s == null) {
            return;
        }
        ScriptScheduler.resumeScript(s);
    }

    private void runScriptSelected() {
        if (this.getScriptList().getSelectedIndex() < 0) {
            return;
        }
        Script s = this.getScriptForIndex(this.getScriptList().getSelectedIndex());
        if (s == null) {
            return;
        }
        s.setStarter(this);
        ScriptScheduler.startScript(s);
    }

    private void saveAsSelected() {
        this.getLogFileDlg().show();
        if (this.getLogFileDlg().getFile() == null) {
            return;
        }
        this.logFilePath = this.getLogFileDlg().getDirectory();
        this.logFileName = this.getLogFileDlg().getFile();
        try {
            FileWriter outFile = new FileWriter(String.valueOf(this.logFilePath) + this.logFileName);
            outFile.write(this.getLogText().getText());
            outFile.close();
        }
        catch (Exception ex) {
            this.handleException(ex);
        }
    }

    private void saveOptions() {
        if (!this.optionsFileName.endsWith("ccf")) {
            this.optionsFileName = String.valueOf(this.optionsFileName) + ".ccf";
        }
        Cebra.save(String.valueOf(this.optionsFilePath) + this.optionsFileName);
    }

    private void saveOptionsAsSelected() {
        this.getOptionsFileDlg().setMode(1);
        this.getOptionsFileDlg().setTitle("Save Options As...");
        this.getOptionsFileDlg().show();
        this.optionsFilePath = this.getOptionsFileDlg().getDirectory();
        this.optionsFileName = this.getOptionsFileDlg().getFile();
        this.saveOptions();
    }

    private void saveOptionsSelected() {
        if (this.optionsFileName == null) {
            this.saveOptionsAsSelected();
            return;
        }
        this.saveOptions();
    }

    private void saveSelected() {
        if (this.logFileName == null) {
            this.saveAsSelected();
            return;
        }
        try {
            FileWriter outFile = new FileWriter(String.valueOf(this.logFilePath) + this.logFileName);
            outFile.write(this.getLogText().getText());
            outFile.close();
        }
        catch (Exception ex) {
            this.handleException(ex);
        }
    }

    public void scriptList_KeyTyped(KeyEvent keyEvent) {
        if (keyEvent.getKeyChar() == '\n') {
            this.scriptOptionsSelected();
            return;
        }
        if (keyEvent.getKeyChar() == '\u007f') {
            this.deleteScriptSelected();
            return;
        }
    }

    public void scriptList_MouseClicked(MouseEvent mouseEvent) {
        if (this.getScriptList().getSelectedIndex() < 0) {
            return;
        }
        if (mouseEvent.getClickCount() > 1) {
            this.scriptOptionsSelected();
        }
    }

    public void scriptList_MousePressed(MouseEvent mouseEvent) {
    }

    private void scriptListKeyPressed(KeyEvent arg1) {
        try {
            this.scriptList_KeyTyped(arg1);
        }
        catch (Throwable ivjExc) {
            this.handleException(ivjExc);
        }
    }

    private void scriptListMouseClicked(MouseEvent arg1) {
        try {
            this.scriptList_MouseClicked(arg1);
        }
        catch (Throwable ivjExc) {
            this.handleException(ivjExc);
        }
    }

    private void scriptListMousePressed(MouseEvent arg1) {
        try {
            this.scriptList_MousePressed(arg1);
        }
        catch (Throwable ivjExc) {
            this.handleException(ivjExc);
        }
    }

    private void scriptOptionsSelected() {
        int idx = this.getScriptList().getSelectedIndex();
        if (idx < 0) {
            return;
        }
        Script s = this.getScriptForIndex(idx);
        if (s == null) {
            return;
        }
        if (!s.getState().equals(Script.PASSIVE)) {
            return;
        }
        new ScriptOptionsDlg(s, this.getCebraMainFrame());
    }

    private void setClassMenuEntries(boolean t) {
        this.getShowClassMenuEntry().setEnabled(t);
        this.getShowClassEntry().setEnabled(t);
        this.getNewScriptMenuEntry().setEnabled(t);
        this.getNewScriptEntry().setEnabled(t);
        this.getNewClassMenuEntry().setEnabled(t);
        this.getNewClassEntry().setEnabled(t);
    }

    private void setIdeCall(String ideCall) {
        Cebra.putItemToSection("ide", "user", ideCall);
    }

    private void setScriptMenuEntries(boolean t) {
        this.getRunScriptMenuEntry().setEnabled(t);
        this.getRunScriptEntry().setEnabled(t);
        this.getSuspendScriptMenuEntry().setEnabled(t);
        this.getSuspendScriptEntry().setEnabled(t);
        this.getResumeScriptMenuEntry().setEnabled(t);
        this.getResumeScriptEntry().setEnabled(t);
        this.getStopScriptMenuEntry().setEnabled(t);
        this.getStopScriptEntry().setEnabled(t);
        this.getDeleteScriptMenuEntry().setEnabled(t);
        this.getDeleteScriptEntry().setEnabled(t);
        this.getScriptOptionsMenuEntry().setEnabled(t);
        this.getScriptOptionsEntry().setEnabled(t);
    }

    private void showClassSelected() {
        ClassTabEntry entry = (ClassTabEntry)this.classForIndex.get(new Integer(this.getClassList().getSelectedIndex()));
        if (entry == null) {
            return;
        }
        if (entry.clazz == null) {
            return;
        }
        String path = Cebra.pathForClass(entry.clazz);
        if (path == null) {
            return;
        }
        if (path.length() == 0) {
            return;
        }
        String shortName = entry.clazz.getName();
        shortName = shortName.substring(shortName.lastIndexOf(".") + 1, shortName.length());
        String fileName = String.valueOf(path) + Cebra.FS + shortName + ".java";
        try {
            File fp = new File(fileName);
            if (!fp.exists()) {
                new CebraWarningDlg("'" + fileName + "' does not exist.", this.getCebraMainFrame());
                return;
            }
            FileReader fr = new FileReader(fp);
            LineNumberReader lnr = new LineNumberReader(fr);
            new DisplayField("Source for " + fileName, lnr).start();
        }
        catch (Exception ex) {
            this.handleException(ex);
        }
    }

    private void showScripts(boolean showScripts) {
        if (showScripts) {
            this.getCebraMainFrame().remove(this.getClassList());
            this.getCebraMainFrame().add(this.getScriptList(), this.getScriptList().getName(), 0);
            this.getShowClassesEntry().setState(false);
            this.getShowScriptsEntry().setState(true);
            this.getShowClassesEntry().setEnabled(true);
            this.getShowScriptsEntry().setEnabled(false);
            this.getClassMenu().setEnabled(false);
            this.getScriptMenu().setEnabled(true);
            this.updateScriptList();
            this.getCebraMainFrame().validate();
            return;
        }
        this.getCebraMainFrame().remove(this.getScriptList());
        this.getCebraMainFrame().add(this.getClassList(), this.getClassList().getName(), 0);
        this.getShowScriptsEntry().setState(false);
        this.getShowClassesEntry().setState(true);
        this.getShowScriptsEntry().setEnabled(true);
        this.getShowClassesEntry().setEnabled(false);
        this.getScriptMenu().setEnabled(false);
        this.getClassMenu().setEnabled(true);
        this.updateClassList();
        this.getCebraMainFrame().validate();
    }

    private void shutDown() {
        this.removeListeners();
        Cebra.shutDown();
        cmv = null;
    }

    private void stopScriptSelected() {
        if (this.getScriptList().getSelectedIndex() < 0) {
            return;
        }
        Script s = this.getScriptForIndex(this.getScriptList().getSelectedIndex());
        if (s == null) {
            return;
        }
        ScriptScheduler.stopScript(s);
    }

    private void suspendScriptSelected() {
        if (this.getScriptList().getSelectedIndex() < 0) {
            return;
        }
        Script s = this.getScriptForIndex(this.getScriptList().getSelectedIndex());
        if (s == null) {
            return;
        }
        ScriptScheduler.suspendScript(s);
    }

    private void toolsSelected() {
        new ToolsDlg(this.getCebraMainFrame());
    }

    public void update(Observable obs, Object obj) {
        if (!this.visible) {
            return;
        }
        if (obj == null) {
            return;
        }
        if (!(obs instanceof Script)) {
            return;
        }
        this.updateScriptList();
    }

    private void updateClassList() {
        ((Component)this.getCebraMainFrame()).setCursor(Cursor.getPredefinedCursor(3));
        int i = 0;
        List classList = this.getClassList();
        classList.removeAll();
        classList.add("Registered Classes");
        ++i;
        Hashtable clazzes = Cebra.registeredScriptClasses();
        Enumeration clazzTab = clazzes.keys();
        while (clazzTab.hasMoreElements()) {
            String clazzName = (String)clazzTab.nextElement();
            Class clazz = (Class)clazzes.get(clazzName);
            boolean abst = Modifier.isAbstract(clazz.getModifiers());
            boolean event = EventScript.isEventScriptClass(clazz);
            classList.add(this.createClassEntry(String.valueOf(clazzName) + " (" + clazz.getName() + ")", event, abst));
            if (!abst) {
                this.classForIndex.put(new Integer(i), new ClassTabEntry(this, clazz, clazzName));
            }
            ++i;
        }
        Hashtable pack = Script.allScriptPackages();
        Enumeration packTab = pack.keys();
        while (packTab.hasMoreElements()) {
            String packName = (String)packTab.nextElement();
            classList.add("Package " + packName);
            ++i;
            clazzes = (Hashtable)pack.get(packName);
            Enumeration clazzTab2 = clazzes.keys();
            while (clazzTab2.hasMoreElements()) {
                String clazzName = (String)clazzTab2.nextElement();
                Class clazz = (Class)clazzes.get(clazzName);
                boolean abst = Modifier.isAbstract(clazz.getModifiers());
                boolean event = EventScript.isEventScriptClass(clazz);
                classList.add(this.createClassEntry(clazzName, event, abst));
                if (!abst) {
                    this.classForIndex.put(new Integer(i), new ClassTabEntry(this, clazz, String.valueOf(packName) + "." + clazzName));
                }
                ++i;
            }
        }
        ((Component)this.getCebraMainFrame()).setCursor(Cursor.getPredefinedCursor(0));
    }

    private void updateClassMenu() {
        int selectedIndex = this.getClassList().getSelectedIndex();
        ClassTabEntry clazz = (ClassTabEntry)this.classForIndex.get(new Integer(selectedIndex));
        if (clazz == null) {
            this.setClassMenuEntries(false);
        } else {
            this.setClassMenuEntries(true);
        }
    }

    private void updateScriptList() {
        Script[] scripts = Script.allInstances();
        int count = scripts.length;
        List scriptList = this.getScriptList();
        scriptList.removeAll();
        if (count == 0) {
            return;
        }
        this.scriptForIndex = new Hashtable(count);
        this.indexForScript = new Hashtable(2 * count + 1);
        int actNameLength = 0;
        int actClassLength = 0;
        this.nameLength = 0;
        this.classLength = 0;
        int i = 0;
        while (i < count) {
            Script actScript = scripts[i];
            this.scriptForIndex.put(new Integer(i), actScript);
            this.indexForScript.put(actScript, new Integer(i));
            actNameLength = actScript.getName().length();
            if (actNameLength > this.nameLength) {
                this.nameLength = actNameLength;
            }
            if ((actClassLength = actScript.getRegisteredClass().length()) > this.classLength) {
                this.classLength = actClassLength;
            }
            ++i;
        }
        i = 0;
        while (i < count) {
            Script s = scripts[i];
            scriptList.add(this.createEntry(s, s.getName(), s.getRegisteredClass()));
            ++i;
        }
    }

    private void updateScriptMenu() {
        int selectedIndex = this.getScriptList().getSelectedIndex();
        if (selectedIndex < 0) {
            this.setScriptMenuEntries(false);
        } else {
            this.setScriptMenuEntries(true);
            Script s = this.getScriptForIndex(selectedIndex);
            if (s.getState().equals(Script.PASSIVE)) {
                this.getStopScriptMenuEntry().setEnabled(false);
                this.getStopScriptEntry().setEnabled(false);
                this.getSuspendScriptMenuEntry().setEnabled(false);
                this.getSuspendScriptEntry().setEnabled(false);
                this.getResumeScriptMenuEntry().setEnabled(false);
                this.getResumeScriptEntry().setEnabled(false);
            } else {
                this.getRunScriptMenuEntry().setEnabled(false);
                this.getRunScriptEntry().setEnabled(false);
                this.getDeleteScriptMenuEntry().setEnabled(false);
                this.getDeleteScriptEntry().setEnabled(false);
                this.getScriptOptionsMenuEntry().setEnabled(false);
                this.getScriptOptionsEntry().setEnabled(false);
                if (s.getState().equals(Script.SUSPENDED)) {
                    this.getSuspendScriptMenuEntry().setEnabled(false);
                    this.getSuspendScriptEntry().setEnabled(false);
                } else {
                    this.getResumeScriptMenuEntry().setEnabled(false);
                    this.getResumeScriptEntry().setEnabled(false);
                }
            }
        }
    }

    public void windowActivated(WindowEvent e) {
    }

    public void windowClosed(WindowEvent e) {
    }

    public void windowClosing(WindowEvent e) {
        if (e.getSource() == this.getCebraMainFrame()) {
            this.shutDown();
            this.close();
            Cebra.exit();
        }
    }

    public void windowDeactivated(WindowEvent e) {
    }

    public void windowDeiconified(WindowEvent e) {
        this.visible = true;
        this.updateScriptList();
    }

    public void windowIconified(WindowEvent e) {
        this.visible = false;
    }

    public void windowOpened(WindowEvent e) {
        this.visible = true;
    }

    private class ClassTabEntry {
        /* synthetic */ CebraMainView this$0;
        Class clazz;
        String name;

        /* synthetic */ ClassTabEntry(CebraMainView this$0, Class c, String n) {
            this.this$0 = this$0;
            this.clazz = c;
            this.name = n;
        }
    }
}

