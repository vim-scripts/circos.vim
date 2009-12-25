" Vim syntax file
" Language: Circos
" Maintainer: chmeee
" Latest Revision: 22 November 2009

if exists("b:current_syntax")
  finish
endif

" Keyword generator
" ruby -na -e 'puts $F[0] if $_ =~ /^\w+/' */*/circos.conf */*/ideogram.conf */*/ticks.conf | sort | uniq

syn keyword circosOpts 24bit angle_offset anglestep auto_alpha_colors auto_alpha_steps axis axis_break
syn keyword circosOpts axis_break_at_edge axis_break_style axis_color axis_spacing axis_thickness
syn keyword circosOpts background background_color background_stroke_color background_stroke_thickness
syn keyword circosOpts band_stroke_thickness band_transparency bezier_radius bezier_radius_purity
syn keyword circosOpts beziersamples blackweak break chr chromosoemes_display_default chromosomes
syn keyword circosOpts chromosomes_breaks chromosomes_display_default chromosomes_order
syn keyword circosOpts chromosomes_radius chromosomes_reverse chromosomes_scale chromosomes_units
syn keyword circosOpts color condition connector_dims crest debug default dir end extend_bin file fill
syn keyword circosOpts fill_bands fill_color fill_under flat flow force_display format glyph
syn keyword circosOpts glyph_size grid grid_color grid_end grid_start grid_thickness ideogram
syn keyword circosOpts ideogram_url imagemap image_map_missing_parameter image_map_name
syn keyword circosOpts image_map_overlay image_map_overlay_stroke_color
syn keyword circosOpts image_map_overlay_stroke_thickness image_map_strict image_map_use importance
syn keyword circosOpts karyotype label label_center label_color label_font label_multiplier
syn keyword circosOpts label_offset label_radius label_relative label_rotate label_separation
syn keyword circosOpts label_size label_snuggle label_with_tag layers layers_overflow
syn keyword circosOpts layers_overflow_color link_color link_dims link_thickness margin max max_gap
syn keyword circosOpts max_snuggle_distance min min_label_distance_to_edge minslicestep mod multiplier
syn keyword circosOpts offset orientation padding perturb perturb_bezier_radius
syn keyword circosOpts perturb_bezier_radius_purity perturb_crest png position prefix r0 r1 radius
syn keyword circosOpts radius1 radius2 record_limit ribbon rmultiplier rpadding rposition rspacing
syn keyword circosOpts scale scale_log_base show show_bands show_grid show_label show_links
syn keyword circosOpts show_tick_labels show_ticks size skip_first_label skip_last_label
syn keyword circosOpts smooth_distance smooth_steps snuggle_link_overlap_test
syn keyword circosOpts snuggle_link_overlap_tolerance snuggle_refine snuggle_sampling
syn keyword circosOpts snuggle_tolerance sort_bin_values spacing spacing_type start stroke_color
syn keyword circosOpts stroke_thickness suffix svg svg_font_scale thickness tick_label_font
syn keyword circosOpts tick_separation type units_nounit units_ok url value warnings z

syn keyword circosColor optblue optgreen optyellow optorange optred optviolet optpurple white vvvvlgrey
syn keyword circosColor vvvlgrey vvlgrey vlgrey lgrey grey dgrey vdgrey vvdgrey vvvdgrey vvvvdgrey
syn keyword circosColor black vlred lred red dred vlgreen lgreen green dgreen vlblue lblue blue dblue
syn keyword circosColor vlpurple lpurple purple dpurple vlyellow lyellow yellow dyellow lime vlorange
syn keyword circosColor lorange orange dorange gpos100 gpos gpos75 gpos66 gpos50 gpos33 gpos25 gvar
syn keyword circosColor gneg acen stalk select nyt_blue nyt_green nyt_yellow nyt_orange nyt_red chr1
syn keyword circosColor chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15
syn keyword circosColor chr16 chr17 chr18 chr19 chr20 chr21 chr22 chr23 chrX chr24 chrY chrM chr0 chrUn
syn keyword circosColor chrNA meth0 meth1 meth2 meth3 meth4 meth5 meth6 meth7 meth8 meth9 meth10 meth11
syn keyword circosColor meth12 meth13 meth14 meth15 meth16 meth17 meth18 meth19 meth20 meth21 meth22
syn keyword circosColor meth23 meth24 meth25 meth26 meth27 meth28 meth29 meth30 meth31 meth32 meth33
syn keyword circosColor meth34 meth35 meth36 meth37 meth38 meth39 meth40 meth41 meth42 meth43 meth44
syn keyword circosColor meth45 meth46 meth47 meth48 meth49 meth50 meth51 meth52 meth53 meth54 meth55
syn keyword circosColor meth56 meth57 meth58 meth59 meth60 meth61 meth62 meth63 meth64 meth65 meth66
syn keyword circosColor meth67 meth68 meth69 meth70 meth71 meth72 meth73 meth74 meth75 meth76 meth77
syn keyword circosColor meth78 meth79 meth80 meth81 meth82 meth83 meth84 meth85 meth86 meth87 meth88
syn keyword circosColor meth89 meth90 meth91 meth92 meth93 meth94 meth95 meth96 meth97 meth98 meth99 meth100

syn match   circosUnits '-\?[^A-Za-z]\d*\.\?\d\+[upr]\?'
syn match   circosComment "#.*$" 
syn region  circosTag start=+<+   end=+>+
syn region  circosInclude start=+<<include+   end=+>>+

let b:current_syntax = "circos"

hi def link circosOpts           Statement
hi def link circosComment        Comment 
hi def link circosTag	         Tag
hi def link circosInclude        Include
hi def link circosUnits          Number
hi def link circosColor          Constant

