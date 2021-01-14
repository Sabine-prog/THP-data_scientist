# Big data

# Méthode qui renvoie la longueur de l'élément passé en paramètre
def ret_length(arr)
  return arr.length
end

# Méthode qui renvoie le ou les handles les + courts
# Dans un 1er temps, je considère qu'il n'y a qu'1 + court
def find_shortest(arr, nb_elts)
  # Rang de l'élément le + court dans le tableau
  rank_shortest = 0
  shortest = ""

  # Parcourt le tableau, compare un à un les éléments du tableau
  shortest = arr[0]
  (nb_elts - 1).times do |i|
    if shortest.length > arr[i + 1].length
      # Mémorise l'élément le + court et son rang dans le tableau
      shortest = arr[i + 1]
      rank_shortest = i + 1
    end
  end
  # Renvoie le rang de l'élément le + court
  return(rank_shortest)
end

# Méthode qui renvoie le nombre d'éléments de longueur "l" passée en paramètre dans le tableau également passé en paramètre
def count_handles_size(arr, nb_elts, size)
  counter = 0 

  # Parcourt le tableau
  nb_elts.times do |i|
    # Compte le nombre d'éléments dont la taille est celle attendue
    if arr[i].length == size
      counter = counter + 1
    end
  end
  return(counter)
end

# Méthode qui renvoie un tableau des handles sans l'@
def suppr_arob(arr, nb_elts)
    arr_tmp = Array.new
    nb_elts.times do |i|
    arr_tmp[i] = arr[i][1..]
  end
  return(arr_tmp)
end

# Méthode qui renvoie un tableau de chaines commeçant par @
def add_arob(arr, nb_elts)
  arr_tmp = Array.new
  nb_elts.times do |i|
    arr_tmp[i][1] = "@" + arr[i]
  end
return(arr_tmp)
end

# Méthode qui renvoie le nombre de handle commençant par une maj
def count_cap(arr, nb_elts)
  # Compteur de majuscules
  cap_counter = 0

  nb_elts.times do |i|
    # Vérifie que le 1er caractère de chaque élément est une majuscule
    if arr[i][1] >= 'A' && arr[i][1] <= 'Z'
      cap_counter = cap_counter + 1
    end
  end
  # Renvoie le nombre de handles commençant par une majuscule
  return(cap_counter)
end

# Méthode qui trie par ordre alphabétique et renvoie le tableau trié
def sort_alpha(arr, nb_elts)
  arr_tmp = Array.new
 
  # Passe tous les caractères en minuscule et trie les éléments par ordre alphabétique
  arr_tmp = arr.map(&:downcase).sort
  return(arr_tmp)
end

# Méthode qui trie par ordre de taille renvoie le tableau trié
def sort_size(arr, nb_elts)
  arr_tmp = Array.new

  # Trie les éléments par ordre de taille
  arr_tmp = arr.sort_by(&:length)
  return(arr_tmp)
end

# Méthode qui renvoie le rang du handle passé en paramètre
def rank_handle(arr, nb_elts, handle)

  rank = -1;

  nb_elts.times do |i|
    if arr[i] == handle
      rank = i;
    end
  end
  return(rank)
end

# Méthode principale
def perform
  arr_handle = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

  arr_tmp = Array.new
  arr_alpha = Array.new
  arr_size = Array.new
  nb_handles = 0
  poisition = 0

  # Compte le nombre de handles
  nb_handles = ret_length(arr_handle)
  puts "Le tableau contient #{nb_handles} handles."

  # Recherche le handle le + court
  rank_shortest = find_shortest(arr_handle, nb_handles)
  puts "\nLe handle le plus court est : #{arr_handle[rank_shortest]}"

  # Récupère les handles sans le @
  arr_tmp = suppr_arob(arr_handle, nb_handles)

  # Affiche les handles qui contiennent 5 caractères
  puts "\n#{count_handles_size(arr_tmp, nb_handles, 5)} handles contiennent 5 caractères (@ ne comptant pas comme un caractère)."

  # Récupère le nombre de handles commençant par une majuscule
  nb_cap = 0
  nb_cap = count_cap(arr_handle, nb_handles)
  puts "\n#{nb_cap} handles commencent par une majuscule."

  # Trie la liste de handle par ordre alphapétique
  arr_alpha = sort_alpha(arr_handle, nb_handles)
  puts "\nLe tableau de handles trié par ordre alphabétique : #{arr_alpha}"

  # Trie la liste de handle par ordre de taille
  arr_size = sort_size(arr_handle, nb_handles)
  puts "\nLe tableau de handles trié par ordre de taille : #{arr_size}"
  
  # Renvoie la position d'1 handle (-1 s'il n'existe pas)
  position = rank_handle(arr_handle, nb_handles, "@epenser")
  if position >= 0
    puts "\nLe handle @epenser est en position #{position}"
  else
    puts "\nLe handle @epenser n'exite pas dans le tableau."
  end

  # Répartition des handles par taille
  nb = 0
  tmp_size = 0
  puts "\nRépartition des handles par taille :"
  arr_size.each do |handle|
    # Renvoie le nombre handles d'une taille donnée
    nb = count_handles_size(arr_size, nb_handles, handle.length)
    # Si la taille a déjà été vue
    if tmp_size != handle.length
      puts ". #{nb} handles de #{handle.length} caractères."
    end
    tmp_size = handle.length
  end
end

# Lance le programme
perform