include $(top_srcdir)/src/Makefile.include

AM_CPPFLAGS += -I$(top_srcdir)/src \
  -I$(top_builddir)/src/qt \
  -I$(top_builddir)/src/qt/forms \
  $(PROTOBUF_CFLAGS) \
  $(QR_CFLAGS)
bin_PROGRAMS = zmark-qt
noinst_LIBRARIES = libzmarkqt.a
SUBDIRS = . $(BUILD_TEST_QT)
DIST_SUBDIRS = . test

# zmark qt core #
QT_TS = \
  locale/zmark_ach.ts \
  locale/zmark_af_ZA.ts \
  locale/zmark_ar.ts \
  locale/zmark_be_BY.ts \
  locale/zmark_bg.ts \
  locale/zmark_bs.ts \
  locale/zmark_ca_ES.ts \
  locale/zmark_ca.ts \
  locale/zmark_ca@valencia.ts \
  locale/zmark_cmn.ts \
  locale/zmark_cs.ts \
  locale/zmark_cy.ts \
  locale/zmark_da.ts \
  locale/zmark_de.ts \
  locale/zmark_el_GR.ts \
  locale/zmark_en.ts \
  locale/zmark_eo.ts \
  locale/zmark_es_CL.ts \
  locale/zmark_es_DO.ts \
  locale/zmark_es_MX.ts \
  locale/zmark_es.ts \
  locale/zmark_es_UY.ts \
  locale/zmark_et.ts \
  locale/zmark_eu_ES.ts \
  locale/zmark_fa_IR.ts \
  locale/zmark_fa.ts \
  locale/zmark_fi.ts \
  locale/zmark_fr_CA.ts \
  locale/zmark_fr.ts \
  locale/zmark_gl.ts \
  locale/zmark_gu_IN.ts \
  locale/zmark_he.ts \
  locale/zmark_hi_IN.ts \
  locale/zmark_hr.ts \
  locale/zmark_hu.ts \
  locale/zmark_id_ID.ts \
  locale/zmark_it.ts \
  locale/zmark_ja.ts \
  locale/zmark_ka.ts \
  locale/zmark_kk_KZ.ts \
  locale/zmark_ko_KR.ts \
  locale/zmark_ky.ts \
  locale/zmark_la.ts \
  locale/zmark_lt.ts \
  locale/zmark_lv_LV.ts \
  locale/zmark_mn.ts \
  locale/zmark_ms_MY.ts \
  locale/zmark_nb.ts \
  locale/zmark_nl.ts \
  locale/zmark_pam.ts \
  locale/zmark_pl.ts \
  locale/zmark_pt_BR.ts \
  locale/zmark_pt_PT.ts \
  locale/zmark_ro_RO.ts \
  locale/zmark_ru.ts \
  locale/zmark_sah.ts \
  locale/zmark_sk.ts \
  locale/zmark_sl_SI.ts \
  locale/zmark_sq.ts \
  locale/zmark_sr.ts \
  locale/zmark_sv.ts \
  locale/zmark_th_TH.ts \
  locale/zmark_tr.ts \
  locale/zmark_uk.ts \
  locale/zmark_ur_PK.ts \
  locale/zmark_uz@Cyrl.ts \
  locale/zmark_vi.ts \
  locale/zmark_vi_VN.ts \
  locale/zmark_zh_CN.ts \
  locale/zmark_zh_HK.ts \
  locale/zmark_zh_TW.ts

QT_FORMS_UI = \
  forms/aboutdialog.ui \
  forms/addressbookpage.ui \
  forms/askpassphrasedialog.ui \
  forms/coincontroldialog.ui \
  forms/editaddressdialog.ui \
  forms/helpmessagedialog.ui \
  forms/intro.ui \
  forms/openuridialog.ui \
  forms/optionsdialog.ui \
  forms/overviewpage.ui \
  forms/receivecoinsdialog.ui \
  forms/receiverequestdialog.ui \
  forms/rpcconsole.ui \
  forms/sendcoinsdialog.ui \
  forms/sendcoinsentry.ui \
  forms/signverifymessagedialog.ui \
  forms/transactiondescdialog.ui

QT_MOC_CPP = \
  moc_addressbookpage.cpp \
  moc_addresstablemodel.cpp \
  moc_askpassphrasedialog.cpp \
  moc_zmarkaddressvalidator.cpp \
  moc_zmarkamountfield.cpp \
  moc_zmarkgui.cpp \
  moc_zmarkunits.cpp \
  moc_clientmodel.cpp \
  moc_coincontroldialog.cpp \
  moc_coincontroltreewidget.cpp \
  moc_csvmodelwriter.cpp \
  moc_editaddressdialog.cpp \
  moc_guiutil.cpp \
  moc_intro.cpp \
  moc_macdockiconhandler.cpp \
  moc_macnotificationhandler.cpp \
  moc_monitoreddatamapper.cpp \
  moc_notificator.cpp \
  moc_openuridialog.cpp \
  moc_optionsdialog.cpp \
  moc_optionsmodel.cpp \
  moc_overviewpage.cpp \
  moc_paymentserver.cpp \
  moc_qvalidatedlineedit.cpp \
  moc_qvaluecombobox.cpp \
  moc_receivecoinsdialog.cpp \
  moc_receiverequestdialog.cpp \
  moc_recentrequeststablemodel.cpp \
  moc_rpcconsole.cpp \
  moc_sendcoinsdialog.cpp \
  moc_sendcoinsentry.cpp \
  moc_signverifymessagedialog.cpp \
  moc_splashscreen.cpp \
  moc_trafficgraphwidget.cpp \
  moc_transactiondesc.cpp \
  moc_transactiondescdialog.cpp \
  moc_transactionfilterproxy.cpp \
  moc_transactiontablemodel.cpp \
  moc_transactionview.cpp \
  moc_utilitydialog.cpp \
  moc_walletframe.cpp \
  moc_walletmodel.cpp \
  moc_walletview.cpp

BITMARK_MM = \
  macdockiconhandler.mm \
  macnotificationhandler.mm

QT_MOC = \
  zmark.moc \
  intro.moc \
  overviewpage.moc \
  rpcconsole.moc

QT_QRC_CPP = qrc_zmark.cpp
QT_QRC = zmark.qrc

PROTOBUF_CC = paymentrequest.pb.cc
PROTOBUF_H = paymentrequest.pb.h
PROTOBUF_PROTO = paymentrequest.proto

BITMARK_QT_H = \
  addressbookpage.h \
  addresstablemodel.h \
  askpassphrasedialog.h \
  zmarkaddressvalidator.h \
  zmarkamountfield.h \
  zmarkgui.h \
  zmarkunits.h \
  clientmodel.h \
  coincontroldialog.h \
  coincontroltreewidget.h \
  csvmodelwriter.h \
  editaddressdialog.h \
  guiconstants.h \
  guiutil.h \
  intro.h \
  macdockiconhandler.h \
  macnotificationhandler.h \
  monitoreddatamapper.h \
  notificator.h \
  openuridialog.h \
  optionsdialog.h \
  optionsmodel.h \
  overviewpage.h \
  paymentrequestplus.h \
  paymentserver.h \
  qvalidatedlineedit.h \
  qvaluecombobox.h \
  receivecoinsdialog.h \
  receiverequestdialog.h \
  recentrequeststablemodel.h \
  rpcconsole.h \
  sendcoinsdialog.h \
  sendcoinsentry.h \
  signverifymessagedialog.h \
  splashscreen.h \
  trafficgraphwidget.h \
  transactiondesc.h \
  transactiondescdialog.h \
  transactionfilterproxy.h \
  transactionrecord.h \
  transactiontablemodel.h \
  transactionview.h \
  utilitydialog.h \
  walletframe.h \
  walletmodel.h \
  walletmodeltransaction.h \
  walletview.h \
  winshutdownmonitor.h

RES_ICONS = \
  res/icons/add.png \
  res/icons/address-book.png \
  res/icons/zmark.ico \
  res/icons/zmark.png \
  res/icons/zmark_testnet.ico \
  res/icons/zmark_testnet.png \
  res/icons/clock1.png \
  res/icons/clock2.png \
  res/icons/clock3.png \
  res/icons/clock4.png \
  res/icons/clock5.png \
  res/icons/configure.png \
  res/icons/connect0_16.png \
  res/icons/connect1_16.png \
  res/icons/connect2_16.png \
  res/icons/connect3_16.png \
  res/icons/connect4_16.png \
  res/icons/debugwindow.png \
  res/icons/edit.png \
  res/icons/editcopy.png \
  res/icons/editpaste.png \
  res/icons/export.png \
  res/icons/filesave.png \
  res/icons/history.png \
  res/icons/key.png \
  res/icons/lock_closed.png \
  res/icons/lock_open.png \
  res/icons/overview.png \
  res/icons/qrcode.png \
  res/icons/quit.png \
  res/icons/receive.png \
  res/icons/remove.png \
  res/icons/send.png \
  res/icons/synced.png \
  res/icons/toolbar.png \
  res/icons/toolbar_testnet.png \
  res/icons/transaction0.png \
  res/icons/transaction2.png \
  res/icons/transaction_conflicted.png \
  res/icons/tx_inout.png \
  res/icons/tx_input.png \
  res/icons/tx_output.png \
  res/icons/tx_mined.png

BITMARK_QT_CPP = \
  zmark.cpp \
  zmarkaddressvalidator.cpp \
  zmarkamountfield.cpp \
  zmarkgui.cpp \
  zmarkunits.cpp \
  clientmodel.cpp \
  csvmodelwriter.cpp \
  guiutil.cpp \
  intro.cpp \
  monitoreddatamapper.cpp \
  notificator.cpp \
  optionsdialog.cpp \
  optionsmodel.cpp \
  qvalidatedlineedit.cpp \
  qvaluecombobox.cpp \
  rpcconsole.cpp \
  splashscreen.cpp \
  trafficgraphwidget.cpp \
  utilitydialog.cpp \
  winshutdownmonitor.cpp

if ENABLE_WALLET
BITMARK_QT_CPP += \
  addressbookpage.cpp \
  addresstablemodel.cpp \
  askpassphrasedialog.cpp \
  coincontroldialog.cpp \
  coincontroltreewidget.cpp \
  editaddressdialog.cpp \
  openuridialog.cpp \
  overviewpage.cpp \
  paymentrequestplus.cpp \
  paymentserver.cpp \
  receivecoinsdialog.cpp \
  receiverequestdialog.cpp \
  recentrequeststablemodel.cpp \
  sendcoinsdialog.cpp \
  sendcoinsentry.cpp \
  signverifymessagedialog.cpp \
  transactiondesc.cpp \
  transactiondescdialog.cpp \
  transactionfilterproxy.cpp \
  transactionrecord.cpp \
  transactiontablemodel.cpp \
  transactionview.cpp \
  walletframe.cpp \
  walletmodel.cpp \
  walletmodeltransaction.cpp \
  walletview.cpp
endif

RES_IMAGES = \
  res/images/about.png \
  res/images/splash.png \
  res/images/splash_testnet.png

RES_MOVIES = $(wildcard res/movies/spinner-*.png)

BITMARK_RC = res/zmark-qt-res.rc

libzmarkqt_a_CPPFLAGS = $(AM_CPPFLAGS) $(QT_INCLUDES) \
  -I$(top_srcdir)/src/qt/forms $(QT_DBUS_INCLUDES)
libzmarkqt_a_SOURCES = $(BITMARK_QT_CPP) $(BITMARK_QT_H) $(QT_FORMS_UI) \
  $(QT_QRC) $(QT_TS) $(PROTOBUF_PROTO) $(RES_ICONS) $(RES_IMAGES) $(RES_MOVIES)

nodist_libzmarkqt_a_SOURCES = $(QT_MOC_CPP) $(QT_MOC) $(PROTOBUF_CC) \
  $(PROTOBUF_H) $(QT_QRC_CPP)

BUILT_SOURCES = $(nodist_libzmarkqt_a_SOURCES)

#Generating these with a half-written protobuf header leads to wacky results.
#This makes sure it's done.
$(QT_MOC): $(PROTOBUF_H)
$(QT_MOC_CPP): $(PROTOBUF_H)

# zmark-qt binary #
zmark_qt_CPPFLAGS = $(AM_CPPFLAGS) $(QT_INCLUDES) \
  -I$(top_srcdir)/src/qt/forms
zmark_qt_SOURCES = zmark.cpp
if TARGET_DARWIN
  zmark_qt_SOURCES += $(BITMARK_MM)
endif
if TARGET_WINDOWS
  zmark_qt_SOURCES += $(BITMARK_RC)
endif
zmark_qt_LDADD = libzmarkqt.a $(LIBBITMARK_SERVER)
if ENABLE_WALLET
zmark_qt_LDADD += $(LIBBITMARK_WALLET)
endif
zmark_qt_LDADD += $(LIBBITMARK_CLI) $(LIBBITMARK_COMMON) $(LIBLEVELDB) $(LIBMEMENV) \
  $(BOOST_LIBS) $(QT_LIBS) $(QT_DBUS_LIBS) $(QR_LIBS) $(PROTOBUF_LIBS) $(BDB_LIBS)
zmark_qt_LDFLAGS = $(QT_LDFLAGS)

# forms/foo.h -> forms/ui_foo.h
QT_FORMS_H=$(join $(dir $(QT_FORMS_UI)),$(addprefix ui_, $(notdir $(QT_FORMS_UI:.ui=.h))))

#locale/foo.ts -> locale/foo.qm
QT_QM=$(QT_TS:.ts=.qm)

.PHONY: FORCE
.SECONDARY: $(QT_QM)

zmarkstrings.cpp: FORCE
	$(MAKE) -C $(top_srcdir)/src qt/zmarkstrings.cpp

translate: zmarkstrings.cpp $(QT_FORMS_UI) $(QT_FORMS_UI) $(BITMARK_QT_CPP) $(BITMARK_QT_H) $(BITMARK_MM)
	@test -n $(LUPDATE) || echo "lupdate is required for updating translations"
	@QT_SELECT=$(QT_SELECT) $(LUPDATE) $^ -locations relative -no-obsolete -ts locale/zmark_en.ts

$(QT_QRC_CPP): $(QT_QRC) $(QT_QM) $(QT_FORMS_H) $(RES_ICONS) $(RES_IMAGES) $(RES_MOVIES) $(PROTOBUF_H)
	@cd $(abs_srcdir); test -f $(RCC) && QT_SELECT=$(QT_SELECT) $(RCC) -name zmark -o $(abs_builddir)/$@ $< || \
	  echo error: could not build $@
	$(SED) -e '/^\*\*.*Created:/d' $@ > $@.n && mv $@{.n,}
	$(SED) -e '/^\*\*.*by:/d' $@  > $@.n && mv $@{.n,}

CLEANFILES = $(BUILT_SOURCES) $(QT_QM) $(QT_FORMS_H) *.gcda *.gcno
