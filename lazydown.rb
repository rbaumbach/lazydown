require 'redcarpet'
require 'pygments.rb'

class LazyDownRender < Redcarpet::Render::XHTML
    
  def doc_header()
    github_css = File.join File.dirname(__FILE__), 'github.css'
    '<style>' + File.read(github_css) + '</style><article class="markdown-body">'
  end
    
  def doc_footer
    '</article>'
  end
  
  def block_code(code, language)
    Pygments.highlight(code, :lexer => language, :options => {:encoding => 'utf-8'})
  end
 
end

md = Redcarpet::Markdown.new(LazyDownRender,
                             :fenced_code_blocks => true,
                             :no_intra_emphasis => true,
                             :autolink => true,
                             :strikethrough => true,
                             :lax_html_blocks => true,
                             :superscript => true,
                             :hard_wrap => true,
                             :tables => true,
                             :xhtml => true,
                             :with_toc_data => true)
puts md.render(STDIN.read)

